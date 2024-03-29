.class Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;
.super Landroid/os/AsyncTask;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchFilters"
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
    .line 160
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;-><init>(Lcom/android/settings/cyanogenmod/SpamList;)V

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

    .line 163
    invoke-static {}, Lcom/android/settings/cyanogenmod/SpamList;->access$400()Landroid/net/Uri;

    move-result-object v0

    iget v3, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 164
    .local v1, notificationUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 166
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 167
    .local v10, notificationIdIndex:I
    const-string v0, "message_text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 168
    .local v11, notificationMessageIndex:I
    const-string v0, "last_blocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 169
    .local v8, notificationBlockedIndex:I
    const-string v0, "count"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 170
    .local v9, notificationCountIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;

    invoke-direct {v7, v2}, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;-><init>(Lcom/android/settings/cyanogenmod/SpamList$1;)V

    .line 172
    .local v7, nInfo:Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->messageText:Ljava/lang/String;

    .line 173
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->id:I

    .line 174
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->date:J

    .line 175
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    .line 176
    iget-object v0, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    iput-object v0, v7, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->appLabel:Ljava/lang/CharSequence;

    .line 177
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v7           #nInfo:Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v8           #notificationBlockedIndex:I
    .end local v9           #notificationCountIndex:I
    .end local v10           #notificationIdIndex:I
    .end local v11           #notificationMessageIndex:I
    :cond_1
    return-void
.end method

.method private getAppInfo(Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-virtual {v3}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 208
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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

    .line 185
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/cyanogenmod/SpamList;->access$600()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 188
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 189
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 190
    .local v9, packageIdIndex:I
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 191
    .local v10, packageNameIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;

    invoke-direct {v8, v2}, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;-><init>(Lcom/android/settings/cyanogenmod/SpamList$1;)V

    .line 193
    .local v8, pInfo:Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    .line 194
    invoke-direct {p0, v8}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->getAppInfo(Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;)V

    .line 195
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->id:I

    .line 196
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-direct {p0, v8, v7}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->addNotificationsForPackage(Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;Ljava/util/List;)V

    goto :goto_0

    .line 199
    .end local v8           #pInfo:Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    .end local v9           #packageIdIndex:I
    .end local v10           #packageNameIndex:I
    :cond_1
    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 160
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->onPostExecute(Ljava/util/List;)V

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
    .line 217
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    new-instance v1, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    invoke-direct {v1, v2, p1}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;-><init>(Lcom/android/settings/cyanogenmod/SpamList;Ljava/util/List;)V

    #setter for: Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList;->access$102(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    .line 218
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    #getter for: Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/SpamList;->access$100(Lcom/android/settings/cyanogenmod/SpamList;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/settings/cyanogenmod/SpamList;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList;->access$202(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;)Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;

    .line 220
    return-void
.end method
