import 'package:fliq/Application/Auth/auth_bloc.dart';
import 'package:fliq/Application/Inbox/inbox_bloc.dart';
import 'package:fliq/Core/Routes/app_routes.dart';
import 'package:fliq/Presentation/Widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<InboxBloc>(context).add(const InboxEvent.getContacts());
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.brown[900]),
        //   onPressed: () => Navigator.pop(context),
        // ),
        title: Text(
          "Messages",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(AuthEvent.logout());
            },
            icon: Icon(Icons.logout),
          ),
        ],
        centerTitle: false,
      ),

      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (!state.isLoggedIn) {
            Navigator.of(context).pushReplacementNamed(AppRoutes.login);
          }
        },
        child: BlocBuilder<InboxBloc, InboxState>(
          builder: (context, state) {
            final contacts = state.contacts;
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    //stories
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.contacts!.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final item = contacts![index];
                          return Container(
                            margin: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage: NetworkImage(
                                    item.square100ProfilePhotoUrl!,
                                  ),
                                ),
                                Text(
                                  item.name!,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    //search bar
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      margin: const EdgeInsets.only(bottom: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          hint: Text("Search", style: TextStyle(fontSize: 14)),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search_outlined,
                              size: 32,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                        ),
                      ),
                    ),
                    //chat list
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(
                        "Chat",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(12),
                      child: ListView.separated(
                        itemCount: contacts!.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final item = contacts[index];
                          return GestureDetector(
                            onTap: () => Navigator.pushNamed(
                              context,
                              AppRoutes.chat,
                              arguments: {
                                'contactId': item.authUserId!,
                                'contact': item,
                              },
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(
                                          item.square100ProfilePhotoUrl!,
                                        ),
                                      ),
                                      HorizontalSpace(10),
                                      Text(
                                        item.name!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    DateFormat(
                                      "hh:MM a",
                                    ).format(item.lastActiveAt!),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
