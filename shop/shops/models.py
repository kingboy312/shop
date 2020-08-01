from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class SuperCat(models.Model):
    cat_name = models.CharField(max_length=1000)
    addtime = models.DateTimeField(auto_now_add=True) 
    def __str__(self):
        return self.cat_name
class SubCat(models.Model):
    cat_name = models.CharField(max_length=1000)
    addtime = models.DateTimeField(auto_now_add=True)  
    super_cat_id = models.ForeignKey(SuperCat,on_delete=models.CASCADE)
    def __str__(self):
        return self.cat_name
class Goods(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    original_price = models.IntegerField()
    current_price  = models.IntegerField()
    picture = models.FileField(upload_to="wed/static/images/goods")
    introduction = models.CharField(max_length=255)
    is_sale  = models.BooleanField()
    is_new = models.BooleanField()
    supercat_id = models.ForeignKey(SuperCat,on_delete=models.CASCADE)
    subcat_id = models.ForeignKey(SubCat,on_delete=models.CASCADE)
    addtime = models.DateTimeField(auto_now_add=True)
    views_count = models.IntegerField(verbose_name=0)
    def __str__(self):
        return self.name
class Cart(models.Model):
    subcat_id = models.ForeignKey(Goods,on_delete=models.CASCADE)
    user_id = models.ForeignKey(User,on_delete=models.CASCADE)
    number = models.IntegerField(verbose_name=0)
    addtime = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.number
class Orders(models.Model):
    user_id = models.ForeignKey(User,on_delete=models.CASCADE)
    recevie_name = models.CharField(max_length=255)
    recevie_address = models.CharField(max_length=255)
    recevie_tel = models.CharField(max_length=255)
    remark = models.CharField(max_length=255)
    addtime = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.recevie_name
class OrdersDetail(models.Model):
    goods_id = models.ForeignKey(Goods,on_delete=models.CASCADE)
    order_id = models.ForeignKey(Orders,on_delete=models.CASCADE)
    number = models.IntegerField(verbose_name=0)