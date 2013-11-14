using System; 
using System.Collections.Generic; 
using System.Text; 
using Microsoft.SqlServer.Management.Smo; 
using Microsoft.SqlServer.Management.Common; 
using System.Collections.Specialized; 
using System.IO; 

namespace SQLScriptGenerator 
{ 
  class Program 
  { 
    static void Main(string[] args) 
    { 
      String instance = @".\sqlexpress";
      String db = "testframework";
      String usp_prefix = "USP";	//I like using prefix USP_ for my stored procedures

      ServerConnection conn = new ServerConnection(instance); 
      Server server = new Server(conn); 
      Database db = server.Databases[db]; 
      foreach (Table t in db.Tables) 
      { 
        WriteFile(t.Name, t.Script()); 
        Console.WriteLine("{0 } ==> done.", t.Name); 
      } 

      foreach (StoredProcedure sp in db.StoredProcedures) 
      { 
        // I'd like use usp as pre?x of my stored procedures 
        if (sp.Name.ToUpper().StartsWith(usp_prefix)) 
        { 
          WriteFile(sp.Name , sp.Script()); 
          Console.WriteLine("{0 } ==> done.", sp.Name); 
        } 
      } 
    } 

    static void WriteFile(string path, StringCollection script) 
    { 
      string contents = ""; 
      foreach (string s in script) 
      { 
        if (s.Trim().ToUpper().StartsWith(”CREATE”) 
          || s.Trim().ToUpper().StartsWith(”ALTER”)) 
        { 
          contents += s; 
        } 
      } 

      //Console.WriteLine(contents); 
      File.WriteAllText(path+”.sql”, contents); 
    } 
  } 
}
