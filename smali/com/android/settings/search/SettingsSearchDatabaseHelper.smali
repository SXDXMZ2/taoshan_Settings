.class public Lcom/android/settings/search/SettingsSearchDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsSearchDatabaseHelper.java"


# static fields
.field private static mInstance:Lcom/android/settings/search/SettingsSearchDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->mInstance:Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "newVersion"

    .prologue
    .line 45
    const-string v0, "search.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/search/SettingsSearchDatabaseHelper;
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->mInstance:Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->mInstance:Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->mInstance:Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    return-object v0
.end method

.method private insertEntry(Landroid/preference/PreferenceActivity$Header;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 5
    .parameter "header"
    .parameter "title"
    .parameter "level"
    .parameter "fragment"
    .parameter "iconRes"
    .parameter "parentTitle"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v2, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 110
    .local v1, p:Landroid/os/Parcel;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    invoke-virtual {p1, v1, v3}, Landroid/preference/PreferenceActivity$Header;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    sget-object v3, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_HEADER:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 116
    .end local v1           #p:Landroid/os/Parcel;
    :cond_0
    sget-object v3, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v3, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_LEVEL:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    sget-object v3, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_ICON:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    sget-object v3, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_FRAGMENT:Ljava/lang/String;

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v3, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_PARENT_TITLE:Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    sget-object v3, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "settings"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 123
    return-void
.end method


# virtual methods
.method public insertEntry(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "level"
    .parameter "fragment"
    .parameter "iconRes"
    .parameter "parentTitle"
    .parameter "key"

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->insertEntry(Landroid/preference/PreferenceActivity$Header;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->insertHeader(Landroid/preference/PreferenceActivity$Header;ILjava/lang/String;)V

    .line 78
    return-void
.end method

.method public insertHeader(Landroid/preference/PreferenceActivity$Header;ILjava/lang/String;)V
    .locals 8
    .parameter "header"
    .parameter "parentTitle"
    .parameter "key"

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 85
    .local v2, title:Ljava/lang/String;
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->insertEntry(Landroid/preference/PreferenceActivity$Header;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_3
    iget v0, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE settings(_id INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT UNIQUE ON CONFLICT REPLACE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_HEADER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_ICON:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_LEVEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_FRAGMENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_PARENT_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 67
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public wipeTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 73
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "settings"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    return-void
.end method
