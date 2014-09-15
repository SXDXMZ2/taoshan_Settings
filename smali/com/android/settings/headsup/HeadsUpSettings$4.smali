.class Lcom/android/settings/headsup/HeadsUpSettings$4;
.super Ljava/lang/Object;
.source "HeadsUpSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/headsup/HeadsUpSettings;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/headsup/HeadsUpSettings;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/headsup/HeadsUpSettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    iput-object p2, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->val$pref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    #getter for: Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/headsup/HeadsUpSettings;->access$400(Lcom/android/settings/headsup/HeadsUpSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->val$pref:Landroid/preference/Preference;

    if-ne v0, v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    #getter for: Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackages:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings/headsup/HeadsUpSettings;->access$300(Lcom/android/settings/headsup/HeadsUpSettings;)Ljava/util/Map;

    move-result-object v2

    #calls: Lcom/android/settings/headsup/HeadsUpSettings;->removeApplicationPref(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/headsup/HeadsUpSettings;->access$500(Lcom/android/settings/headsup/HeadsUpSettings;Ljava/lang/String;Ljava/util/Map;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    #getter for: Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/headsup/HeadsUpSettings;->access$600(Lcom/android/settings/headsup/HeadsUpSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->val$pref:Landroid/preference/Preference;

    if-ne v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings$4;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    #getter for: Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackages:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings/headsup/HeadsUpSettings;->access$100(Lcom/android/settings/headsup/HeadsUpSettings;)Ljava/util/Map;

    move-result-object v2

    #calls: Lcom/android/settings/headsup/HeadsUpSettings;->removeApplicationPref(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/headsup/HeadsUpSettings;->access$500(Lcom/android/settings/headsup/HeadsUpSettings;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
