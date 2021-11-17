import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mr_grapes/models/product.dart';

class CatalogScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(AppLocalizations.of(context)!.catalog);
  }
}
