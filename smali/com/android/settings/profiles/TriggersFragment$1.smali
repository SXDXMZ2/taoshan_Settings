.class Lcom/android/settings/profiles/TriggersFragment$1;
.super Ljava/lang/Object;
.source "TriggersFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/profiles/AbstractTriggerPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/TriggersFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/TriggersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/profiles/TriggersFragment$1;->this$0:Lcom/android/settings/profiles/TriggersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/profiles/AbstractTriggerPreference;Lcom/android/settings/profiles/AbstractTriggerPreference;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 167
    invoke-virtual {p1}, Lcom/android/settings/profiles/AbstractTriggerPreference;->getTriggerState()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/profiles/AbstractTriggerPreference;->getTriggerState()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 168
    invoke-virtual {p1, p2}, Lcom/android/settings/profiles/AbstractTriggerPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/profiles/AbstractTriggerPreference;->getTriggerState()I

    move-result v2

    if-ne v2, v4, :cond_2

    move v0, v1

    .line 171
    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p2}, Lcom/android/settings/profiles/AbstractTriggerPreference;->getTriggerState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/android/settings/profiles/AbstractTriggerPreference;->getTriggerState()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/profiles/AbstractTriggerPreference;->getTriggerState()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    check-cast p1, Lcom/android/settings/profiles/AbstractTriggerPreference;

    .end local p1
    check-cast p2, Lcom/android/settings/profiles/AbstractTriggerPreference;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/profiles/TriggersFragment$1;->compare(Lcom/android/settings/profiles/AbstractTriggerPreference;Lcom/android/settings/profiles/AbstractTriggerPreference;)I

    move-result v0

    return v0
.end method
