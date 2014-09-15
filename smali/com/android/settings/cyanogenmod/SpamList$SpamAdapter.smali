.class Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpamList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpamAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mItems:Ljava/util/List;

    .line 215
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->getItem(I)Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->getItem(I)Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->getItemViewType(I)I

    move-result v6

    .line 255
    .local v6, viewType:I
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->getItem(I)Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;

    move-result-object v3

    .line 257
    .local v3, info:Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;
    if-nez v6, :cond_1

    .line 258
    if-nez p2, :cond_0

    .line 259
    new-instance p2, Landroid/widget/TextView;

    .end local p2
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const v9, 0x1010208

    invoke-direct {p2, v7, v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local p2
    :cond_0
    move-object v5, p2

    .line 262
    check-cast v5, Landroid/widget/TextView;

    .line 263
    .local v5, titleView:Landroid/widget/TextView;
    check-cast v3, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;

    .end local v3           #info:Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;
    iget-object v7, v3, Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .end local v5           #titleView:Landroid/widget/TextView;
    :goto_0
    return-object p2

    .restart local v3       #info:Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;
    :cond_1
    move-object v4, v3

    .line 266
    check-cast v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;

    .line 268
    .local v4, nInfo:Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;
    if-nez p2, :cond_2

    .line 269
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0400d4

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 270
    new-instance v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;-><init>(Lcom/android/settings/cyanogenmod/SpamList$1;)V

    .line 271
    .local v2, holder:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;
    const v7, 0x7f0d010f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->message:Landroid/widget/TextView;

    .line 272
    const v7, 0x7f0d0217

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->dateAndCount:Landroid/widget/TextView;

    .line 273
    const v7, 0x7f0d0218

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    .line 274
    iget-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    :goto_1
    iget-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->message:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->messageText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-wide v7, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->date:J

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 283
    .local v1, dateString:Ljava/lang/CharSequence;
    iget v7, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    if-nez v7, :cond_3

    .line 284
    iget-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->dateAndCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f080427

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_2
    iget-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    .end local v1           #dateString:Ljava/lang/CharSequence;
    .end local v2           #holder:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;
    goto :goto_1

    .line 287
    .restart local v1       #dateString:Ljava/lang/CharSequence;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0001

    iget v9, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, countString:Ljava/lang/String;
    iget-object v7, v2, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;->dateAndCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f080428

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;

    .line 302
    .local v0, item:Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;
    invoke-static {}, Lcom/android/settings/cyanogenmod/SpamList;->access$300()Landroid/net/Uri;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 303
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->notifyDataSetChanged()V

    .line 305
    return-void
.end method
