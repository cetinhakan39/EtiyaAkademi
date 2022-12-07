package com.etiya.ecommercedemo5.business.dtos.response.address;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AddAddressResponse {
    private int id;
    private int addresstitleid;
    private int cityid;
    private String street;
    private int customerid;

}
