.class Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/LockPatternActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/LockPatternActivity;Lcom/android/settings/applications/LockPatternActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const v2, 0x7f0c0804

    const/4 v4, 0x4

    const-wide/16 v6, 0x7d0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_4

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0809

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c080d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c080c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 263
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c080a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    goto/16 :goto_0

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    .line 274
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 282
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c081a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    #calls: Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V
    invoke-static {v0}, Lcom/android/settings/applications/LockPatternActivity;->access$100(Lcom/android/settings/applications/LockPatternActivity;)V

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0808

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    return-void
.end method
