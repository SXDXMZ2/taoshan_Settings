.class Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;
.super Landroid/os/AsyncTask;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchFilterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/SpamList;


# direct methods
.method private constructor <init>(Lcom/android/settings/cyanogenmod/SpamList;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;-><init>(Lcom/android/settings/cyanogenmod/SpamList;)V

    return-void
.end method

.method private addNotificationsForPackage(Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;Ljava/util/List;)V
    .locals 12
    .parameter "pInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;>;"
    const/4 v2, 0x0

    .line 141
    invoke-static {}, Lcom/android/settings/cyanogenmod/SpamList;->access$300()Landroid/net/Uri;

    move-result-object v0

    iget v3, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    .local v1, notificationUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 146
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 147
    .local v10, notificationIdIndex:I
    const-string v0, "message_text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 149
    .local v11, notificationMessageIndex:I
    const-string v0, "last_blocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 151
    .local v8, notificationBlockedIndex:I
    const-string v0, "count"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 154
    .local v9, notificationCountIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;

    invoke-direct {v7, v2}, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;-><init>(Lcom/android/settings/cyanogenmod/SpamList$1;)V

    .line 156
    .local v7, nInfo:Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->messageText:Ljava/lang/String;

    .line 157
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->id:I

    .line 158
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->date:J

    .line 159
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    .line 160
    iget-object v0, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    iput-object v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->appLabel:Ljava/lang/CharSequence;

    .line 161
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v7           #nInfo:Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v8           #notificationBlockedIndex:I
    .end local v9           #notificationCountIndex:I
    .end local v10           #notificationIdIndex:I
    .end local v11           #notificationMessageIndex:I
    :cond_1
    return-void
.end method

.method private fetchAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-virtual {v3}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 192
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 194
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p1
    :goto_0
    return-object p1

    .line 193
    .restart local p1
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 11
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/cyanogenmod/SpamList;->access$500()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 173
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 174
    .local v9, packageIdIndex:I
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 175
    .local v10, packageNameIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;

    invoke-direct {v8, v2}, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;-><init>(Lcom/android/settings/cyanogenmod/SpamList$1;)V

    .line 177
    .local v8, pInfo:Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->id:I

    .line 178
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    .line 179
    iget-object v0, v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->fetchAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    .line 180
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0, v8, v7}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->addNotificationsForPackage(Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;Ljava/util/List;)V

    goto :goto_0

    .line 183
    .end local v8           #pInfo:Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 185
    .end local v9           #packageIdIndex:I
    .end local v10           #packageNameIndex:I
    :cond_1
    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    new-instance v1, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    #setter for: Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList;->access$702(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    .line 201
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    #getter for: Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/SpamList;->access$700(Lcom/android/settings/cyanogenmod/SpamList;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;
    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList;->access$002(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;)Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;

    .line 203
    return-void
.end method
