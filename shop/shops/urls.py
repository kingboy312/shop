from django.urls import path,re_path
from .views import *
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import handler404, handler500
from django.contrib.auth.views import LoginView
handler404 = page_not_found
urlpatterns = [
    path('register/', register),
    re_path(r'^$',lerninglog,),
    path('logout/',logout_view),
    re_path(r'^login/$',LoginView.as_view(template_name='user/login.html'),name = 'login'),
    path("goods_list/<int:supercat_id>",goods_list)
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)