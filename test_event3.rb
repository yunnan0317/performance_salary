# -*- coding: utf-8 -*-
def monthly_sales
  110 # TODO 从数据库中读取数据
end

target_sales = 100
@target_sales = 120

event "monthly sales suspiciously high" do
  monthly_sales > target_sales
end

