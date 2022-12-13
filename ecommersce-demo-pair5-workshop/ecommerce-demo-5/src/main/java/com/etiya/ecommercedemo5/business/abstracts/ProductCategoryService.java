package com.etiya.ecommercedemo5.business.abstracts;
import com.etiya.ecommercedemo5.business.dtos.request.productcategory.AddProductCategoryRequest;
import com.etiya.ecommercedemo5.business.dtos.response.productcategory.AddProductCategoryResponse;
import com.etiya.ecommercedemo5.core.util.results.DataResult;
import com.etiya.ecommercedemo5.entities.concretes.ProductCategory;

import java.util.List;

public interface ProductCategoryService {

    DataResult<List<ProductCategory>> getAll();

    DataResult<ProductCategory> getById(int id);

    DataResult<AddProductCategoryResponse> addProductCategory(AddProductCategoryRequest addProductCategoryRequest);
}
