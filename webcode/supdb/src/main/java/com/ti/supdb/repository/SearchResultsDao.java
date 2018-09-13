//$Id: LotDao.java,v 1.5 2012/11/20 23:26:49 a0199948 Exp $
package com.ti.supdb.repository;

import com.ti.spring.annotations.MyBatisRepository;
import com.ti.supdb.domain.SearchResults;
import com.ti.supdb.domain.SearchResults2;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

/**
 * DAO interface for working with Lots.
 * TODO: remove (demonstration only).
 */
@MyBatisRepository
public interface SearchResultsDao {

    /**
     * Gets the list of lots.
     * @param searchTerm The facility identifier.
     * @return A List of Lot objects.
     */
    List<SearchResults> getSearchResultsList(Map<String, Object> params);
   List<SearchResults2> getSearchResultsList2(Map<String, Object> params);

}
