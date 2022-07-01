# pragma once

# include <string>
# include <map>
# include "parser.hh"

# define YY_DECL yy::parser::symbol_type yylex (driver& drv)

YY_DECL;

class driver
{
public:
  driver ();
  
  std::map<std::string, int> variables;
  
  int result;

  int parse (const std::string &f);
  
  std::string file;
  
  bool trace_parsing;
  bool trace_scanning;
  
  void scan_begin ();
  void scan_end ();
  
  yy::location location;
  
};
