.class Lcom/android/settings/applications/LockPatternActivity$2;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/applications/LockPatternActivity$2;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$2;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$2;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    .line 91
    return-void
.end method
