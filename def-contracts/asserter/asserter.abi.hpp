const char* const asserter_abi = R"=====(
{
   "types": [],
   "structs": [
      {
         "name": "assertdef",
         "base": "",
         "fields": [
            {
               "name": "condition",
               "type": "int8"
            },{
               "name": "message",
               "type": "string"
            }
         ]
      }, {
         "name": "nothing",
         "base": "",
         "fields": []
      }
   ],
   "actions": [
      {
         "name": "procassert",
         "type": "assertdef",
         "ricardian_contract": ""
      }, {
         "name": "provereset",
         "type": "nothing",
         "ricardian_contract": ""
      }
   ],
   "tables": [],
   "ricardian_clauses": []
}
)=====";
