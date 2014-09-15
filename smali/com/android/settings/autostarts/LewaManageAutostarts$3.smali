.class Lcom/android/settings/autostarts/LewaManageAutostarts$3;
.super Ljava/lang/Thread;
.source "LewaManageAutostarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autostarts/LewaManageAutostarts;->closeAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

.field final synthetic val$item:Lcom/android/settings/autostarts/AppItem;


# direct methods
.method constructor <init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Lcom/android/settings/autostarts/AppItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    iput-object p2, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->val$item:Lcom/android/settings/autostarts/AppItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 201
    new-array v0, v9, [Ljava/lang/Object;

    .line 202
    .local v0, arrayOfObject:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->val$item:Lcom/android/settings/autostarts/AppItem;

    iget-object v6, v6, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    aput-object v6, v0, v7

    .line 207
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->val$item:Lcom/android/settings/autostarts/AppItem;

    iget-object v6, v6, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    #getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$400(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 210
    .local v5, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 211
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v6, v0, v8

    .line 212
    const-string v6, "%s/%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 215
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    #getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$400(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1, v9, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 218
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-virtual {v6}, Lcom/android/settings/autostarts/LewaManageAutostarts;->flush()V

    .line 219
    return-void
.end method
