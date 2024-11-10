import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://dgdmlwsozjfulpibdusd.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRnZG1sd3NvempmdWxwaWJkdXNkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEyMDIwNzQsImV4cCI6MjA0Njc3ODA3NH0.2W17vd8T8j9m8zgdDlvJO_L0fQPbcRm4t4RLSU2sHOc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
