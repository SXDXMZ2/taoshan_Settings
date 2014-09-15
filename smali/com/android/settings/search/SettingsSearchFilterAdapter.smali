.class public Lcom/android/settings/search/SettingsSearchFilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsSearchFilterAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;,
        Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;,
        Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;,
        Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mFilter:Landroid/widget/Filter;

.field private mFilteredInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastConstraint:Ljava/lang/CharSequence;

.field private mMatchHighlightColor:I

.field private mPopulateDoneReceiver:Landroid/os/ResultReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mSearchInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mIconCache:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Lcom/android/settings/search/SettingsSearchFilterAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$1;-><init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mPopulateDoneReceiver:Landroid/os/ResultReceiver;

    .line 65
    new-instance v0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;-><init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilter:Landroid/widget/Filter;

    .line 151
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mResources:Landroid/content/res/Resources;

    .line 154
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mMatchHighlightColor:I

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/search/SearchPopulator;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v1, "notifier"

    iget-object v2, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mPopulateDoneReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->filterInfos(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mLastConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mLastConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/search/SettingsSearchFilterAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->applyFilteredMatchSpans()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mSearchInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->removeNonAlphaNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private applyFilteredMatchSpans()V
    .locals 4

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;

    .line 308
    .local v1, info:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mMatches:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1200(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 309
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mMatches:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1200(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v2

    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mPendingMatches:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1400(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 311
    .end local v1           #info:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    :cond_0
    return-void
.end method

.method private filterInfos(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 17
    .parameter "constraint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v7, filteredValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;>;"
    if-nez p1, :cond_1

    .line 303
    :cond_0
    return-object v7

    .line 259
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, actualConstraint:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 264
    invoke-static {v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->removeNonAlphaNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, filteredConstraint:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mSearchInfo:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;

    .line 267
    .local v9, item:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    iget-object v15, v9, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->title:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 268
    .local v12, title:Ljava/lang/String;
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mNormalizedTitle:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1300(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, filteredTitle:Ljava/lang/String;
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mPendingMatches:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1400(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 272
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 273
    .local v11, pos:I
    :goto_1
    const/4 v15, -0x1

    if-eq v11, v15, :cond_8

    .line 274
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 275
    .local v14, unfilteredLen:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 276
    .local v5, filteredLen:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 277
    .local v2, constraintLen:I
    new-instance v10, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;

    invoke-direct {v10}, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;-><init>()V

    .line 278
    .local v10, match:Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;
    const/4 v13, 0x0

    .local v13, ufIndex:I
    const/4 v3, 0x0

    .line 279
    .local v3, fIndex:I
    :goto_2
    if-ge v13, v14, :cond_5

    if-ge v3, v5, :cond_5

    .line 280
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 279
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 283
    :cond_3
    if-ne v3, v11, :cond_4

    .line 284
    iput v13, v10, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->start:I

    .line 286
    :cond_4
    add-int v15, v11, v2

    add-int/lit8 v15, v15, -0x1

    if-ne v3, v15, :cond_7

    .line 287
    add-int/lit8 v15, v13, 0x1

    iput v15, v10, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->end:I

    .line 293
    :cond_5
    iget v15, v10, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->start:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    iget v15, v10, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->end:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 294
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mPendingMatches:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1400(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_6
    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v6, v4, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 297
    goto :goto_1

    .line 290
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 298
    .end local v2           #constraintLen:I
    .end local v3           #fIndex:I
    .end local v5           #filteredLen:I
    .end local v10           #match:Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;
    .end local v13           #ufIndex:I
    .end local v14           #unfilteredLen:I
    :cond_8
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mPendingMatches:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1400(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 299
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static removeNonAlphaNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 314
    const-string v0, "[^\\p{L}\\p{Nd}]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->getItem(I)Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 197
    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    if-nez v8, :cond_1

    .line 198
    if-nez p2, :cond_0

    .line 199
    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400cf

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 245
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 204
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    if-nez p2, :cond_4

    .line 205
    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400d0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 206
    new-instance v2, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;

    invoke-direct {v2, v10}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;-><init>(Lcom/android/settings/search/SettingsSearchFilterAdapter$1;)V

    .line 207
    .local v2, holder:Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;
    const v8, 0x7f0d0203

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v2, v8}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$902(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 208
    const v8, 0x7f0d0204

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->titleView:Landroid/widget/TextView;
    invoke-static {v2, v8}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$1002(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 209
    const v8, 0x7f0d0205

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->parentView:Landroid/widget/TextView;
    invoke-static {v2, v8}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$1102(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 210
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    :goto_1
    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;

    .line 216
    .local v4, info:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mIconCache:Landroid/util/SparseArray;

    iget v9, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 217
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget v8, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->iconRes:I

    if-eqz v8, :cond_2

    .line 218
    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mResources:Landroid/content/res/Resources;

    iget v9, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mIconCache:Landroid/util/SparseArray;

    iget v9, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->iconRes:I

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    :cond_2
    if-nez v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 224
    :cond_3
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$900(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mMatches:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1200(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 227
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->title:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    .local v7, titleSpan:Landroid/text/SpannableStringBuilder;
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mMatches:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->access$1200(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;

    .line 229
    .local v5, match:Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter;->mMatchHighlightColor:I

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 230
    .local v6, span:Landroid/text/style/ForegroundColorSpan;
    iget v8, v5, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->start:I

    iget v9, v5, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->end:I

    const/16 v10, 0x11

    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 212
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #holder:Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    .end local v5           #match:Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;
    .end local v6           #span:Landroid/text/style/ForegroundColorSpan;
    .end local v7           #titleSpan:Landroid/text/SpannableStringBuilder;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;
    goto :goto_1

    .line 233
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #info:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    .restart local v7       #titleSpan:Landroid/text/SpannableStringBuilder;
    :cond_5
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->titleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$1000(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #titleSpan:Landroid/text/SpannableStringBuilder;
    :goto_3
    iget v8, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->parentTitle:I

    if-eqz v8, :cond_7

    .line 239
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->parentView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$1100(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    iget v9, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->parentTitle:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 240
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->parentView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$1100(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    move-object v0, p2

    .line 245
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 235
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_6
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->titleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$1000(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v4, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 242
    :cond_7
    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->parentView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->access$1100(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x2

    return v0
.end method
