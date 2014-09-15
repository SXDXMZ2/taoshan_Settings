.class Lcom/android/settings/search/SearchHighlightAdapterWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchHighlightAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/SearchHighlightAdapterWrapper;->addHighlight(Landroid/view/View;)V
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
    .line 161
    iput-object p1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper$2;->this$0:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper$2;->this$0:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    #calls: Lcom/android/settings/search/SearchHighlightAdapterWrapper;->removeHighlight()V
    invoke-static {v0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->access$200(Lcom/android/settings/search/SearchHighlightAdapterWrapper;)V

    .line 165
    return-void
.end method
