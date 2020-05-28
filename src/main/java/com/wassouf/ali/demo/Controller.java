package com.wassouf.ali.demo;

import com.wassouf.ali.demo.CountryRepository;
import com.wassouf.ali.demo.entity.Country;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/main")
public class Controller
{
    private CountryRepository countryRepository;


    public Controller(CountryRepository countryRepository)
    {
        this.countryRepository = countryRepository;
    }


    @GetMapping("/get")
    public List<Country> getCountries(){
        return countryRepository.findAllByName("syria");
    }
}
