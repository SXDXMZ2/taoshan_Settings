.class Lcom/android/settings/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Settings;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    iput-object p2, p0, Lcom/android/settings/Settings$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSearchBar:Lcom/android/settings/search/SettingsAutoCompleteTextView;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$100(Lcom/android/settings/Settings;)Lcom/android/settings/search/SettingsAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->clearFocus()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSearchBar:Lcom/android/settings/search/SettingsAutoCompleteTextView;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$100(Lcom/android/settings/Settings;)Lcom/android/settings/search/SettingsAutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/Settings$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSearchBar:Lcom/android/settings/search/SettingsAutoCompleteTextView;
    invoke-static {v1}, Lcom/android/settings/Settings;->access$100(Lcom/android/settings/Settings;)Lcom/android/settings/search/SettingsAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-object v0, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSearchBar:Lcom/android/settings/search/SettingsAutoCompleteTextView;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$100(Lcom/android/settings/Settings;)Lcom/android/settings/search/SettingsAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->requestFocus()Z

    .line 270
    iget-object v0, p0, Lcom/android/settings/Settings$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 272
    return v2
.end method
