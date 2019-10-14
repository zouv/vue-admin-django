# -*- coding: UTF-8 -*-
from rest_framework.authentication import SessionAuthentication

class CsrfExemptSessionAuthentication(SessionAuthentication):
    """
        去除 CSRF 检查
    """
    def enforce_csrf(self, request):
        return  # To not perform the csrf check previously happening