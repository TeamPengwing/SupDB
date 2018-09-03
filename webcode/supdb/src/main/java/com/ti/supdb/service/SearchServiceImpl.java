//$Id: SearchServiceImpl.java,v 1.4 2012/11/20 23:26:50 a0199948 Exp $
package com.ti.supdb.service;

import com.ti.supdb.domain.SearchResults;
import com.ti.supdb.repository.SearchResultsDao;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Implementation of search service. The service layer is where the application's
 * business logic resides (business logic and DAO interaction should not
 * appear in the controller).
 * TODO: remove (demonstration only)
 */
@Service
public class SearchServiceImpl implements SearchService {
    //---- Members
    private SearchResultsDao searchResultsDao;

    //---- Methods
    /**
     * Main constructor.
     * @param searchResultsDao The SearchResultsDao implementation
     */
    @Autowired
    SearchServiceImpl(final SearchResultsDao searchResultsDao) {
        this.searchResultsDao = searchResultsDao;
    }

       /** {@inheritDoc} */
    @Override
    public List<SearchResults> getSearchResults(final String searchTerm) {
        Map<String, Object> res = new HashMap<String, Object>();
        ResultSet rs = null;

        System.out.println("START");
        
        res.put("sSearchString", searchTerm);
        res.put("oResult", rs);

        searchResultsDao.getSearchResultsList(res);
        
        ArrayList temp = (ArrayList<SearchResults>) res.get("oResult");
        System.out.println(temp.isEmpty());
                
        
        //return (ArrayList<SearchResults>) res.get("oResult");       
        return temp;
    }

}
