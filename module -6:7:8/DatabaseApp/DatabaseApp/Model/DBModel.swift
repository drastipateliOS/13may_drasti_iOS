//
//  DBModel.swift
//  DatabaseApp
//
//  Created by MAC1 on 30/08/24.
//

import Foundation
import SQLite3

class DBModel
{
    var strpath=""
    var stmnt:OpaquePointer?=nil
    
    func dmlservice(query:String) -> Bool
    {
        var status=false
        
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/studdb.db"
        
        if sqlite3_open(strpath, &stmnt)==SQLITE_OK
        {
            if sqlite3_prepare_v2(stmnt, query, -1, &stmnt, nil)==SQLITE_OK
            {
                status=true
                sqlite3_step(stmnt)
            }
            sqlite3_finalize(stmnt)
            sqlite3_close(stmnt)
        }
        return status
    }
    
    
    func showalldata(query:String) -> Array<Any>
    {
        var data=Array<Any>()
        var dict=Dictionary<String,Any>()
        
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/studdb.db"
        
        if sqlite3_open(strpath, &stmnt)==SQLITE_OK
        {
            if sqlite3_prepare_v2(stmnt, query, -1, &stmnt, nil)==SQLITE_OK
            {
                while sqlite3_step(stmnt)==SQLITE_ROW
                {
                    let stid=String(cString: sqlite3_column_text(stmnt, 0))
                    let stnm=String(cString: sqlite3_column_text(stmnt, 1))
                    let stsub=String(cString: sqlite3_column_text(stmnt, 2))
                    let stct=String(cString: sqlite3_column_text(stmnt, 3))
                    
                    dict["id"]=stid
                    dict["name"]=stnm
                    dict["sub"]=stsub
                    dict["city"]=stct
                    data.append(dict)
                }
                
            }
            sqlite3_finalize(stmnt)
            sqlite3_close(stmnt)
        }
        return data
    }
    
    
}


