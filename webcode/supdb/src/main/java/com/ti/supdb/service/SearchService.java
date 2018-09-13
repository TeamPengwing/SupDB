//$Id: LotService.java,v 1.3 2012/11/16 22:09:31 a0199948 Exp $
package com.ti.supdb.service;

import com.ti.supdb.domain.SearchResults;
import com.ti.supdb.domain.SearchResults2;
import java.util.List;

/**
 * Lot service definition. The service layer is where the application's business
 * logic resides (business logic and DAO interaction should normally not appear
 * in the controller). TODO: remove (demonstration only)
 */
public interface SearchService {

    /**
     * Returns a search Results.
     *
     * @param searchTerm The facility identifier.
     * @return The search results
     */
    List<SearchResults> getSearchResults(String searchTerm);
    List<SearchResults2> getSearchResults2(String searchTerm);

}
