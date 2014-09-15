.class Lcom/android/settings/search/SearchHighlightAdapterWrapper$1;
.super Landroid/os/Handler;
.source "SearchHighlightAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchHighlightAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchHighlightAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchHighlightAdapterWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper$1;->this$0:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper$1;->this$0:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    #calls: Lcom/android/settings/search/SearchHighlightAdapterWrapper;->addHighlight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->access$000(Lcom/android/settings/search/SearchHighlightAdapterWrapper;Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper$1;->this$0:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightDone:Z
    invoke-static {v0, v1}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->access$102(Lcom/android/settings/search/SearchHighlightAdapterWrapper;Z)Z

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
