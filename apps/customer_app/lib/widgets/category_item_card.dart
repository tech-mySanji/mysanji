import 'package:cached_network_image/cached_network_image.dart';
import 'package:customer_app/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/app_bloc/app_bloc.dart';
import '../blocs/app_bloc/app_event.dart';

class CategoryItemCard extends StatelessWidget {
  final Category category;

  const CategoryItemCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
       _appBloc.add(CategorySelectedEvent(category));
      },
      child: Material(
        color: Colors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0xFFFFF7C4),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: CachedNetworkImage(
                      fadeInDuration: Duration(milliseconds: 500),
                      fadeOutDuration: Duration(milliseconds: 500),
                      imageUrl: category.img_url ?? '',
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    category.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
