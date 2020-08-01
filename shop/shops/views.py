from django.shortcuts import render
from .form import *
from django.http import HttpResponseRedirect
from django.contrib.auth import logout,authenticate,login
# Create your views here.
def register(requst):
    if requst.method != 'POST':
        form = registerForm()
    else:
        form = registerForm(data=requst.POST)
        if form.is_valid():
            new_user = form.save()

            login(requst,new_user)
            return HttpResponseRedirect('/')
    context = {'form': form}
    return render(requst, 'user/register.html', context)
def lerninglog(requst):
    topics = Goods.objects.filter().order_by('-id')[:2]
    sale_goods = Goods.objects.filter(is_sale=1).order_by('-id')[:12]
    new_goods = Goods.objects.filter(is_new=1).order_by('-id')[:12]
    ent = {'hot_goods':topics,'sale_goods':sale_goods,'new_goods':new_goods}
    return render(requst, 'shop/index.html',ent)

def page_not_found(request,err):
    return render(request,"shop/404.html")
def logout_view(requst):
    logout(requst)
    return HttpResponseRedirect('/learninglog/')
def goods_list(request,supercat_id):
    """
    商品页
    """
    page = request.GET.get('type', 1)  # 获取page参数值
    page_data = Goods.objects.filter(supercat_id=supercat_id)
    hot_goods = Goods.objects.filter(supercat_id=supercat_id).order_by('-id')[:7]
    ent = {'page_data':page_data,'hot_goods ': hot_goods,'supercat_id':supercat_id}
    return render(request,'shop/goods_list.html',ent)