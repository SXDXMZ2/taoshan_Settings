.class Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;
.super Ljava/lang/Object;
.source "ProtectedAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/ProtectedAccountView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    iput-boolean p2, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 149
    iget-boolean v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->val$success:Z

    if-eqz v3, :cond_2

    .line 151
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    #getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$000(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 153
    .local v0, baseActivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    #getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$000(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 157
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 158
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pattern_lock_protected_apps"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    #getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mNotifyAccountResetCb:Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$100(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    #getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mNotifyAccountResetCb:Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$100(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;->onNotifyAccountReset()V

    .line 175
    .end local v0           #baseActivity:Landroid/app/Activity;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v0       #baseActivity:Landroid/app/Activity;
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 169
    .end local v0           #baseActivity:Landroid/app/Activity;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    #getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$000(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c041c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 173
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    #getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$200(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
