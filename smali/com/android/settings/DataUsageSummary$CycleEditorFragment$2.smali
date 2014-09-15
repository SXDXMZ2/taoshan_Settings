.class Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$cycleWeekDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$cycleWeekDayPicker:Landroid/widget/NumberPicker;

    iput-object p4, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p5, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$template:Landroid/net/NetworkTemplate;

    iput-object p6, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 1903
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1904
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$cycleWeekDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1907
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyCycleLength(Landroid/net/NetworkTemplate;)I

    move-result v1

    .line 1908
    .local v1, cycleLength:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1909
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1915
    .local v0, cycleDay:I
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1916
    .local v2, cycleTimezone:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 1917
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$target:Lcom/android/settings/DataUsageSummary;

    #calls: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1918
    return-void

    .line 1910
    .end local v0           #cycleDay:I
    .end local v2           #cycleTimezone:Ljava/lang/String;
    :cond_0
    if-ne v1, v5, :cond_1

    .line 1911
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;->val$cycleWeekDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .restart local v0       #cycleDay:I
    goto :goto_0

    .line 1913
    .end local v0           #cycleDay:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #cycleDay:I
    goto :goto_0
.end method
