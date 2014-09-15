.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field private final mMobileDataEnabler:Lcom/android/settings/net/MobileDataEnabler;

.field private final mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

.field private final mVoiceWakeupEnabler:Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .parameter "dpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1064
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 1065
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1069
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1070
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 1071
    new-instance v0, Lcom/android/settings/net/MobileDataEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/net/MobileDataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/net/MobileDataEnabler;

    .line 1072
    new-instance v0, Lcom/android/settings/profiles/ProfileEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/profiles/ProfileEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    .line 1073
    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 1074
    new-instance v0, Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;

    .line 1075
    iput-object p4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1076
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 1018
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1019
    const/4 v0, 0x0

    .line 1030
    :goto_0
    return v0

    .line 1020
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02c1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02c2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02c3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d0197

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02db

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02da

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1026
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1027
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02dc

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1028
    const/4 v0, 0x3

    goto :goto_0

    .line 1030
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "holder"
    .parameter "icon"

    .prologue
    .line 1216
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1217
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1219
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1220
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1221
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1222
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 5
    .parameter "header"
    .parameter "holder"

    .prologue
    .line 1196
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1198
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, accType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1201
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 1205
    .end local v0           #accType:Ljava/lang/String;
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1207
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1208
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1209
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    :goto_1
    return-void

    .line 1203
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1211
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1037
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f0d0038

    const v9, 0x1020016

    const v8, 0x1020010

    const/4 v4, 0x0

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1082
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 1083
    .local v2, headerType:I
    const/4 v5, 0x0

    .line 1085
    .local v5, view:Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 1086
    :cond_0
    new-instance v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 1087
    .local v3, holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 1128
    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1135
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1192
    :goto_2
    return-object v5

    .line 1089
    :pswitch_0
    new-instance v5, Landroid/widget/TextView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x1010208

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v5       #view:Landroid/view/View;
    move-object v6, v5

    .line 1091
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1095
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040097

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1097
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1098
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1100
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1102
    const v6, 0x7f0d0018

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 1106
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040095

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1108
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1109
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1111
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1113
    const v6, 0x7f0d018a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 1114
    const v6, 0x7f0d00dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto :goto_0

    .line 1118
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040096

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1121
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1122
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1124
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1130
    .end local v3           #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_1
    move-object v5, p2

    .line 1131
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1137
    :pswitch_4
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1142
    :pswitch_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02c1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1143
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1155
    :cond_2
    :goto_3
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1144
    :cond_3
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02c2

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1145
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1146
    :cond_4
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02c3

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 1147
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/net/MobileDataEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/net/MobileDataEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1148
    :cond_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d0197

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1149
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/profiles/ProfileEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1150
    :cond_6
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02da

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 1151
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/location/LocationEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1152
    :cond_7
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02db

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1153
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1159
    :pswitch_6
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02dc

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 1160
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v0

    .line 1161
    .local v0, hasCert:Z
    if-eqz v0, :cond_b

    .line 1162
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1163
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const/4 v4, 0x1

    .line 1165
    .local v4, isManaged:Z
    :cond_8
    if-eqz v4, :cond_a

    .line 1166
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x7f0200a4

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1171
    :goto_4
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/settings/Settings$HeaderAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    .end local v0           #hasCert:Z
    .end local v4           #isManaged:Z
    :cond_9
    :goto_5
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1168
    .restart local v0       #hasCert:Z
    .restart local v4       #isManaged:Z
    :cond_a
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 1180
    .end local v4           #isManaged:Z
    :cond_b
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1181
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1188
    .end local v0           #hasCert:Z
    :pswitch_7
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1087
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1135
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1047
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1235
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1236
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/net/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/net/MobileDataEnabler;->pause()V

    .line 1237
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfileEnabler;->pause()V

    .line 1238
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationEnabler;->pause()V

    .line 1239
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;

    invoke-virtual {v0}, Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;->pause()V

    .line 1240
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1226
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1227
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/net/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/net/MobileDataEnabler;->resume()V

    .line 1228
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfileEnabler;->resume()V

    .line 1229
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationEnabler;->resume()V

    .line 1230
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;

    invoke-virtual {v0}, Lcom/android/settings/voicewakeup/VoiceWakeupEnabler;->resume()V

    .line 1231
    return-void
.end method
