import 'package:jobsque/data/responses/job_response/job_responses.dart';

const ID_CACHE_KEY="ID_CACHE_KEY";
abstract class LocalDataSource {
  Future<JobIDResponse> getJoIDCache();
  Future<void> saveIDtoCache (JobIDResponse jobIDResponse);
}
class LocalDataSourceImp extends LocalDataSource{
  Map<String,CachedItem> cachedMap = Map();
  @override
  Future<JobIDResponse> getJoIDCache() {
    // TODO: implement joID
    throw UnimplementedError();
  }

  @override
  Future<void> saveIDtoCache(JobIDResponse jobIDResponse) async {
    cachedMap[ID_CACHE_KEY] =CachedItem(jobIDResponse);
  }

}
class CachedItem{
  dynamic data;
  int cacheTime = DateTime.now().microsecondsSinceEpoch;
  CachedItem(this.data);
}