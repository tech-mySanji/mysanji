import 'package:customer_app/blocs/app_bloc/app_event.dart';
import 'package:customer_app/blocs/app_bloc/app_state.dart';
import 'package:customer_app/model/product.dart';
import 'package:customer_app/widgets/products_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/app_bloc/app_bloc.dart';
import '../widgets/customer_support.dart';
import '../widgets/empty_products.dart';

class ListOfProducts extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    _appBloc.add(GetProductEvent());

    return GestureDetector(
      onTap: () => {},
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).canvasColor,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: Theme.of(context).canvasColor,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'Category Name',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.support_agent,
                    color: Theme.of(context).primaryColor,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => {},
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: Container(
                              height: 540.0,
                              child: CustomerSupport(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Builder(
                            builder: (context) {
                              final subCat = [];
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: List.generate(subCat.length,
                                      (subCatIndex) {
                                    final subCatItem = subCat[subCatIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      child: MaterialButton(
                                        onPressed: () async {},
                                        child: Text(
                                          'Sub Category',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 70.0, 0.0, 0.0),
                          child: BlocBuilder<AppBloc,AppState>(
                            builder: (context,state) {
                              if(state is ProductRetrievedState){
                                return StreamBuilder<List<ProductModel>>(
                                    stream: state.products,
                                    builder: (context, snapshot) {
                                      List<ProductModel>? products = snapshot.data;
                                      return ListView.builder(
                                        itemCount: products!.length,
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          0,
                                          0,
                                          80.0,
                                        ),
                                        reverse: false,
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                16.0, 0.0, 16.0, 10.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor: Colors.transparent,
                                              child: Container(
                                                width: double.infinity,
                                                height: 148.0,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(13.0),
                                                ),
                                                child: ProductsCard(product: products![index],),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }
                                );
                              }
                              else{
                                return EmptyProducts();
                              }
                            }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
