import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/functions/launch_url.dart';
import 'package:readify/core/widgets/custom_bottun.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomBottun(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomBottun(
              onPressed: () async {
               launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
              text: getText(bookModel),
              fontSize: 16,
              backgroundColor: Kcolor1,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
 String getText(BookModel bookModel) {
  if(bookModel.volumeInfo.previewLink == null){
    return 'Not Available';
  }else{
    return 'Preview';
  }
 }
}
