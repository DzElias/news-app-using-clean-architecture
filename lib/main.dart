import 'package:clean_architecture_app/config/theme/app_themes.dart';
import 'package:clean_architecture_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:clean_architecture_app/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:clean_architecture_app/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:clean_architecture_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async{
  await initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const DailyNews()
      ),
    );
  }
}
