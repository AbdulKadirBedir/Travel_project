import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  static const String APIKEY =
   "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzMzAyNDE2NiwiZXhwIjoxOTQ4NjAwMTY2fQ.XDJjFqje2LLx_BkyJFfoB5kge_htM1h4jtRrd3zqizA";
  static const String APIURL = "https://dtvcrgoamgtftszvlhjg.supabase.co";

  static SupabaseClient supabaseClient = SupabaseClient(APIURL,APIKEY );
}
