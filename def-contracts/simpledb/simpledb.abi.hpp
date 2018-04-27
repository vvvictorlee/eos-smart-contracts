const char* const simpledb_abi = R"=====(
{
  "types": [],
  "structs": [{
      "name": "record1",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "uint64"
        },{
          "name": "u256",
          "type": "uint256"
        },{
          "name": "u128",
          "type": "uint128"
        },{
          "name": "u64",
          "type": "uint64"
        },{
          "name": "u32",
          "type": "uint32"
        },{
          "name": "u16",
          "type": "uint16"
        },{
          "name": "u8",
          "type": "uint8"
        },{
          "name": "i64",
          "type": "int64"
        },{
          "name": "i32",
          "type": "int32"
        },{
          "name": "i16",
          "type": "int16"
        },{
          "name": "i8",
          "type": "int8"
        }
      ]
    },{
      "name": "insert_record1",
      "base": "",
      "fields": [{
          "name": "r1",
          "type": "record1"
        }
      ]
    },{
      "name": "remove_record1",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "uint64"
        }
      ]
    },{
      "name": "record2",
      "base": "",
      "fields": [{
          "name": "key1",
          "type": "uint128"
        },{
          "name": "key2",
          "type": "uint128"
        }
      ]
    },{
      "name": "insert_record2",
      "base": "",
      "fields": [{
          "name": "r2",
          "type": "record2"
        }
      ]
    },{
      "name": "remove_record2",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "record2"
        }
      ]
    },{
      "name": "record3",
      "base": "",
      "fields": [{
          "name": "key1",
          "type": "uint64"
        },{
          "name": "key2",
          "type": "uint64"
        },{
          "name": "key3",
          "type": "uint64"
        }
      ]
    },{
      "name": "insert_record3",
      "base": "",
      "fields": [{
          "name": "r3",
          "type": "record3"
        }
      ]
    },{
      "name": "remove_record3",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "record3"
        }
      ]
    },{
      "name": "key_value1",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "string"
        },{
          "name": "value",
          "type": "string"
        }
      ]
    },{
      "name": "insert_keyvalue1",
      "base": "",
      "fields": [{
          "name": "kv1",
          "type": "key_value1"
        }
      ]
    },{
      "name": "remove_keyvalue1",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "string"
        }
      ]
    },{
      "name": "complex_type",
      "base": "",
      "fields": [{
          "name": "name",
          "type": "string"
        },{
          "name": "age",
          "type": "uint64"
        }
      ]
    },{
      "name": "key_value2",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "string"
        },{
          "name": "value",
          "type": "complex_type"
        }
      ]
    },{
      "name": "insert_keyvalue2",
      "base": "",
      "fields": [{
          "name": "kv2",
          "type": "key_value2"
        }
      ]
    },{
      "name": "remove_keyvalue2",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "string"
        }
      ]
    }
  ],
  "actions": [{
      "name": "insert1",
      "type": "insert_record1"
    },{
      "name": "remove1",
      "type": "remove_record1"
    },{
      "name": "insert2",
      "type": "insert_record2"
    },{
      "name": "remove2",
      "type": "remove_record2"
    },{
      "name": "insert3",
      "type": "insert_record3"
    },{
      "name": "remove3",
      "type": "remove_record3"
    },{
      "name": "insertkv1",
      "type": "insert_keyvalue1"
    },{
      "name": "removekv1",
      "type": "remove_keyvalue1"
    },{
      "name": "insertkv2",
      "type": "insert_keyvalue2"
    },{
      "name": "removekv2",
      "type": "remove_keyvalue2"
    }
  ],
  "tables": [{
      "name": "record1",
      "index_type": "i64",
      "key_names": [
        "key"
      ],
      "key_types": [
        "uint64"
      ],
      "type": "record1"
    },{
      "name": "record2",
      "index_type": "i128i128",
      "key_names": [
        "key1",
        "key2"
      ],
      "key_types": [
        "uint128",
        "uint128"
      ],
      "type": "record2"
    },{
      "name": "record3",
      "index_type": "i64i64i64",
      "key_names": [
        "key1",
        "key2",
        "key3"
      ],
      "key_types": [
        "uint64",
        "uint64",
        "uint64"
      ],
      "type": "record3"
    },{
      "name": "keyvalue1",
      "index_type": "str",
      "key_names": [
        "key"
      ],
      "key_types": [
        "string"
      ],
      "type": "key_value1"
    },{
      "name": "keyvalue2",
      "index_type": "str",
      "key_names": [
        "key"
      ],
      "key_types": [
        "string"
      ],
      "type": "key_value2"
    }
  ]
})=====";
