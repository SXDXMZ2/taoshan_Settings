.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;
.super Ljava/lang/Object;
.source "MultitaskSuRequestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->requestReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 272
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const v2, 0x7f080002

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget v5, v5, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget v1, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    if-gtz v1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-boolean v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
