.class Lcom/android/settings/search/SettingsSearchFilterAdapter$2;
.super Landroid/widget/Filter;
.source "SettingsSearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SettingsSearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 68
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 69
    .local v1, results:Landroid/widget/Filter$FilterResults;
    iget-object v2, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$100(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 70
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 71
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mLastConstraint:Ljava/lang/CharSequence;
    invoke-static {v2, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$302(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 78
    return-object v1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #calls: Lcom/android/settings/search/SettingsSearchFilterAdapter;->filterInfos(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    invoke-static {v2, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$200(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;>;"
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$102(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/util/List;)Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$100(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #calls: Lcom/android/settings/search/SettingsSearchFilterAdapter;->applyFilteredMatchSpans()V
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$400(Lcom/android/settings/search/SettingsSearchFilterAdapter;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$2;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method
