/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.web;

import com.ti.supdb.domain.SearchResults;
import com.ti.supdb.service.SearchService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author a0282565
 */
@Controller
public class SearchController {
    // ---- Members
    //HttpServletRequest request;

    private SearchService searchService;

    @Autowired
    public SearchController(final SearchService searchService) {
        this.searchService = searchService;
    }
   
    @RequestMapping("/searchmaterial")
    public String searchMaterial(final Model model) {
        return "materialsearch";
    }
    
    @RequestMapping(value = "/getSearchResults", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getSearchResults(HttpServletRequest request) {
        Map<String, Object> ret = new HashMap<String, Object>();
        String searchText = "";
        try {
            searchText = request.getParameter("search[value]").toString();
        } catch (Exception e) {

        }
        //try {

        //List<SearchResults> ar = searchService.getSearchResults(searchText);
        
        //SearchResults element = new SearchResults(materialid, materialname, 
        //     materialdesc, 
        //     groupname1, fieldname1, fieldvalue1,  
        //     groupname2, fieldname2,  fieldvalue2, 
        //     groupname3, fieldname3,  fieldvalue3, 
        //     rating);
        
        
          List<SearchResults> ar = new ArrayList<SearchResults>();                  
                         
        ar.add(new SearchResults(0, "RAZOR BLADE - 4671324-0001", 
                 "2 inches RAZOR Blade. ZH05-SD2000-N1-90-N2409 HEFF1073", 
                "General Info", "Site", "TIPI, TIM",  
                "Technical Specification", "Devices",  "For Automotive / Non-Automotive / C021 / C027 (LASER groove and non-LASER groove) - Flipchip only", 
                "USAGE SPECIFICATION","Supplier","DISCO",
                "3.5","https://www.disco.co.jp/eg/products/blade/images/zh05.jpg"));
               
        ar.add(new SearchResults(2, "RAZOR BLADE - 4652841-0001", 
                 "Electroformed Bond Hub Blades. ZHT-2395 204F-SE HDCC1098", 
                "General Info", "Site", "TIPI, TIM",  
                "Technical Specification", "Devices",  "Damascene Copper", 
                "USAGE SPECIFICATION","Supplier","DISCO",
                "3.5","https://www.disco.co.jp/eg/products/blade/images/zhdg.jpg"));
        ar.add( new SearchResults(3, "RAZOR BLADE - 4662344-0001", 
                 "Electroformed Bomd Blades with HUB. ZHT-2392 127F-SE HCBB2128", 
                "General Info", "Site", "TIPI",  
                "Technical Specification", "Devices",  "For PoP using FH9011 DAF", 
                "USAGE SPECIFICATION","Supplier","DISCO",
                "3.5","https://www.disco.co.jp/eg/products/blade/images/nbcz.jpg"));        
        ar.add( new SearchResults(4, "Keteca K4T08L15-2L-UW - 4718368-0001", 
                 "Keteca K4T08L15-2L-UW - 4718368-0001. HCEE2027 - ZH01-SD3500-O-110-N2392", 
                "General Info", "Site", "TIM",  
                "Technical Specification", "Devices",  "Automotive / Non-Automotive / DAF / 50HPA07ISO / E035 / >70um scribe width / >7.5mils - 10.5mils wafer thickness / Any Die Size", 
                "USAGE SPECIFICATION","Supplier","KETECA",
                "4","http://www.keteca.com/keteca_dicing/images/dicing/diamablade.jpg"));
        ar.add( new SearchResults(5, "AccuPlus Hub Blade - 4044806-0056", 
                 "AccuPlus S1230", 
                "General Info", "Site", "TITL",  
                "Technical Specification", "Devices",  "None specified", 
                "USAGE SPECIFICATION","Supplier","KNS",
                "3","https://www.kns.com/KnS/assets/img/Product%20-%20Dicing%20Blades/ProductImage_AccuPLUS_01.jpg"));
        ar.add( new SearchResults(6, "UniPLUS™ bubless blade - 4707656-0001", 
                 "UniPLUS™ J38D0-DPOS-TIT", 
                "General Info", "Site", "TITL",  
                "Technical Specification", "Devices",  "None specified", 
                "USAGE SPECIFICATION","Supplier","KNS",
                "3","https://www.kns.com/KnS/assets/img/Product%20-%20Dicing%20Blades/ProductImage_UniPLUS-Hubless_01.jpg"));
        ar.add( new SearchResults(7, "Capillary Au - 4669055-0001", 
                 "Compact Ceramic B0911-51-19-08 (11-70-20-L-P)", 
                "General Info", "Site", "TMEX",  
                "Technical Specification", "Bond Pad Metallization",  "BOAC/Al", 
                "USAGE SPECIFICATION","Supplier","PECO",
                "3","http://www2.peco.co.kr/img/images/cap/cap_img1_on.gif"));
        ar.add( new SearchResults(8, "Capillary Au - 4676667-0001", 
                 "GFC Capillary N0912-51-18-08(11-70-20-L-P)", 
                "General Info", "Site", "TIM",  
                "Technical Specification", "Bond Pad Metallization",  "Al, BOAC, DCu", 
                "USAGE SPECIFICATION","Supplier","PECO",
                "3","http://www2.peco.co.kr/img/images/cap/cap_img1_on.gif"));
        ar.add( new SearchResults(9, "Capillary Cu - 8008541-0001", 
                 "CAPILLARY, 1.5MIL, SU-51200-685ZE-ZU36", 
                "General Info", "Site", "TIEM",  
                "Technical Specification", "Bond Pad Metallization",  "Al", 
                "USAGE SPECIFICATION","Supplier","Gaiser",
                "3","http://www2.peco.co.kr/img/images/cap/cap_img1_on.gif"));
        ar.add( new SearchResults(10, "Capillary Cu - 4702790-0001", 
                 "TC-10-XLMBN20DZP47A8", 
                "General Info", "Site", "TITL",  
                "Technical Specification", "Bond Pad Metallization",  "All", 
                "USAGE SPECIFICATION","Supplier","TOTO",
                "3","https://jp.toto.com/E_Cera/bonding/images/bonding-p01.jpg"));
        ar.add( new SearchResults(11, "Capillary Au - 4200848-0001", 
                 "TO-13-XLM-BN-RHTI", 
                "General Info", "Site", "TITL",  
                "Technical Specification", "Bond Pad Metallization",  "All", 
                "USAGE SPECIFICATION","Supplier","TOTO",
                "3","https://jp.toto.com/E_Cera/bonding/images/bonding-p01.jpg"));
        ar.add( new SearchResults(12, "Dicing Blade - 4655143-0001", 
                 "G1430-E500-400, ZH05-SD2000-N1-70 ED", 
                "General Info", "Site", "TITL",  
                "Technical Specification", "Devices",  "None Specified", 
                "USAGE SPECIFICATION","Supplier","KNS/DISCO",
                "3","https://jp.toto.com/E_Cera/bonding/images/bonding-p01.jpg"));
        ar.add( new SearchResults(13, "Dicing Blade - 4718368-0001", 
                 "HCEE2027 - ZH01-SD3500-O-110-N2392, Keteca K4T08L15-2L-UW", 
                "General Info", "Site", "TIM",  
                "Technical Specification", "Devices",  "Automotive / Non-Automotive / DAF / 50HPA07ISO / E035 / >70um scribe width / >7.5mils - 10.5mils wafer thickness / Any Die Size", 
                "USAGE SPECIFICATION","Supplier","Disco / Keteca",
                "3","https://jp.toto.com/E_Cera/bonding/images/bonding-p01.jpg"));
        ret.put("data", ar);
        
        
        
        //ret.put("total", ar.size());
        //ret.put("data", searchService.getSearchResults(searchText));

        //} catch (Exception e) {
        //TO DO: Logger code here
        //e.getMessage();
        //}
        
        
        
        
        
        return ret;
    }
    
    
}
