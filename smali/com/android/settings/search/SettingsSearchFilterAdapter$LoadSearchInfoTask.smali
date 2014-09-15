.class Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;
.super Landroid/os/AsyncTask;
.source "SettingsSearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SettingsSearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSearchInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;Lcom/android/settings/search/SettingsSearchFilterAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;-><init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .parameter "param"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$500(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SearchPopulator;->loadSearchData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;>;"
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mSearchInfo:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$602(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/util/List;)Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mLastConstraint:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$300(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$102(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/util/List;)Ljava/util/List;

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->notifyDataSetChanged()V

    .line 108
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    iget-object v2, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #getter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mLastConstraint:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$300(Lcom/android/settings/search/SettingsSearchFilterAdapter;)Ljava/lang/CharSequence;

    move-result-object v2

    #calls: Lcom/android/settings/search/SettingsSearchFilterAdapter;->filterInfos(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$200(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/android/settings/search/SettingsSearchFilterAdapter;->mFilteredInfo:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$102(Lcom/android/settings/search/SettingsSearchFilterAdapter;Ljava/util/List;)Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    #calls: Lcom/android/settings/search/SettingsSearchFilterAdapter;->applyFilteredMatchSpans()V
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$400(Lcom/android/settings/search/SettingsSearchFilterAdapter;)V

    goto :goto_0
.end method
