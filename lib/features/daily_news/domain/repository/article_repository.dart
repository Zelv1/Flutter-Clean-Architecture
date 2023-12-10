import 'package:clarch/core/resources/data_state.dart';
import 'package:clarch/features/daily_news/domain/entities/acticle.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
