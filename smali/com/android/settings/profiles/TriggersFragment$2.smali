.class Lcom/android/settings/profiles/TriggersFragment$2;
.super Ljava/lang/Object;
.source "TriggersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/TriggersFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/TriggersFragment;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$triggerName:Ljava/lang/String;

.field final synthetic val$triggerType:I

.field final synthetic val$valueInts:[I


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/TriggersFragment;ILjava/lang/String;[ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/profiles/TriggersFragment$2;->this$0:Lcom/android/settings/profiles/TriggersFragment;

    iput p2, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$triggerType:I

    iput-object p3, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$valueInts:[I

    iput-object p5, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$triggerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment$2;->this$0:Lcom/android/settings/profiles/TriggersFragment;

    #getter for: Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;
    invoke-static {v0}, Lcom/android/settings/profiles/TriggersFragment;->access$100(Lcom/android/settings/profiles/TriggersFragment;)Landroid/app/Profile;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$triggerType:I

    iget-object v2, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$valueInts:[I

    aget v3, v3, p2

    iget-object v4, p0, Lcom/android/settings/profiles/TriggersFragment$2;->val$triggerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Profile;->setTrigger(ILjava/lang/String;ILjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment$2;->this$0:Lcom/android/settings/profiles/TriggersFragment;

    #getter for: Lcom/android/settings/profiles/TriggersFragment;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/settings/profiles/TriggersFragment;->access$200(Lcom/android/settings/profiles/TriggersFragment;)Landroid/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/TriggersFragment$2;->this$0:Lcom/android/settings/profiles/TriggersFragment;

    #getter for: Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;
    invoke-static {v1}, Lcom/android/settings/profiles/TriggersFragment;->access$100(Lcom/android/settings/profiles/TriggersFragment;)Landroid/app/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment$2;->this$0:Lcom/android/settings/profiles/TriggersFragment;

    #calls: Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V
    invoke-static {v0}, Lcom/android/settings/profiles/TriggersFragment;->access$300(Lcom/android/settings/profiles/TriggersFragment;)V

    .line 271
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 272
    return-void
.end method
