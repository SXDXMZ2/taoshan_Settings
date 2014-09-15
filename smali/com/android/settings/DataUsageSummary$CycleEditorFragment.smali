.class public Lcom/android/settings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1802
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;IILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 1802
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->updatePicker(IILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1815
    :goto_0
    return-void

    .line 1808
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1809
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$2600(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1811
    new-instance v1, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1812
    .local v1, dialog:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1813
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1814
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePicker(IILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 3
    .parameter "cycleLength"
    .parameter "cycleDay"
    .parameter "cycleDayPicker"
    .parameter "cycleWeekDayPicker"
    .parameter "cdEditor"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1819
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1820
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1821
    invoke-virtual {p4, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 1822
    invoke-virtual {p3, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 1823
    invoke-virtual {p3, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1825
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1826
    invoke-virtual {p4, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 1827
    invoke-virtual {p3, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 1828
    invoke-virtual {p4, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 1829
    :cond_2
    if-nez p1, :cond_0

    .line 1830
    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 1836
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    .line 1837
    .local v19, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v17

    check-cast v17, Lcom/android/settings/DataUsageSummary;

    .line 1838
    .local v17, target:Lcom/android/settings/DataUsageSummary;
    #getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/DataUsageSummary;->access$2700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v5

    .line 1840
    .local v5, editor:Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1841
    .local v18, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v22

    .line 1843
    .local v22, dialogInflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 1844
    .local v6, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v6}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyCycleLength(Landroid/net/NetworkTemplate;)I

    move-result v4

    .line 1845
    .local v4, cycleLength:I
    invoke-virtual {v5, v6}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v7

    .line 1847
    .local v7, cycleDay:I
    const v2, 0x7f040032

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 1848
    .local v23, view:Landroid/view/View;
    const v2, 0x7f0d008f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1850
    .local v10, cdEditor:Landroid/view/View;
    const v2, 0x7f0d0090

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    .line 1851
    .local v8, cycleDayPicker:Landroid/widget/NumberPicker;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1852
    const/16 v2, 0x1f

    invoke-virtual {v8, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1853
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1855
    const v2, 0x7f0d0091

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    .line 1857
    .local v9, cycleWeekDayPicker:Landroid/widget/NumberPicker;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1858
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1859
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1861
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1863
    const v2, 0x7f0d008e

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    .line 1865
    .local v21, cycleLengthSpinner:Landroid/widget/Spinner;
    const v2, 0x7f0b00a7

    const v3, 0x1090008

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v20

    .line 1868
    .local v20, cycleLengthAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1870
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1871
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1872
    new-instance v2, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;ILcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;ILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v11, p0

    move v12, v4

    move v13, v7

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    .line 1893
    invoke-direct/range {v11 .. v16}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->updatePicker(IILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V

    .line 1895
    const v2, 0x7f0c0b14

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1896
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1898
    const v2, 0x7f0c0b16

    new-instance v11, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;

    move-object/from16 v12, p0

    move-object v13, v8

    move-object v14, v9

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v17}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$2;-><init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1921
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
