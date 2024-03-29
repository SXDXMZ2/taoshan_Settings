.class public Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultImg:Landroid/graphics/drawable/Drawable;

.field private mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflator:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/applications/ProtectedAppsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    .line 302
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    .line 306
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 309
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    .line 310
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    .line 311
    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f040051

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 319
    new-instance v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;

    invoke-direct {v2, p2}, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;-><init>(Landroid/view/View;)V

    .line 320
    .local v2, viewHolder:Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    .line 327
    .local v0, app:Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    iget-object v3, v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v3, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 330
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-object p2

    .line 322
    .end local v0           #app:Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    .end local v2           #viewHolder:Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;

    .restart local v2       #viewHolder:Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;
    goto :goto_0

    .line 330
    .restart local v0       #app:Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .local v2, newApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .local v3, oldApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    .line 349
    .local v0, app:Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    iget-object v4, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    .end local v0           #app:Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 357
    new-instance v4, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;Lcom/android/settings/applications/ProtectedAppsActivity$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    iput-object v2, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    .line 363
    :goto_2
    return-void

    .line 361
    :cond_2
    iput-object v3, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    goto :goto_2
.end method
