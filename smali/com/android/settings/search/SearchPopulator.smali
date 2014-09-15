.class public Lcom/android/settings/search/SearchPopulator;
.super Landroid/app/IntentService;
.source "SearchPopulator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/settings/search/SearchPopulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SearchPopulator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/search/SearchPopulator;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private getFileCrC(Ljava/lang/String;)[B
    .locals 10
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 380
    const/4 v4, 0x0

    .line 382
    .local v4, zfile:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 383
    .end local v4           #zfile:Ljava/util/zip/ZipFile;
    .local v5, zfile:Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v7, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 384
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_2

    .line 385
    sget-object v7, Lcom/android/settings/search/SearchPopulator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get MANIFEST.MF from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 394
    if-eqz v5, :cond_0

    .line 396
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 402
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #zfile:Ljava/util/zip/ZipFile;
    .restart local v4       #zfile:Ljava/util/zip/ZipFile;
    :cond_1
    :goto_1
    return-object v6

    .line 397
    .end local v4           #zfile:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #zfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v2

    .line 398
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    .line 390
    .local v0, crc:J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/settings/search/SearchPopulator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get CRC for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_3
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    .line 394
    if-eqz v5, :cond_4

    .line 396
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v4, v5

    .line 399
    .end local v5           #zfile:Ljava/util/zip/ZipFile;
    .restart local v4       #zfile:Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 397
    .end local v4           #zfile:Ljava/util/zip/ZipFile;
    .restart local v5       #zfile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v2

    .line 398
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 392
    .end local v0           #crc:J
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #zfile:Ljava/util/zip/ZipFile;
    .restart local v4       #zfile:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v7

    .line 394
    :goto_3
    if-eqz v4, :cond_1

    .line 396
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 397
    :catch_3
    move-exception v2

    .line 398
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 394
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_5

    .line 396
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 399
    :cond_5
    :goto_5
    throw v6

    .line 397
    :catch_4
    move-exception v2

    .line 398
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 394
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #zfile:Ljava/util/zip/ZipFile;
    .restart local v5       #zfile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #zfile:Ljava/util/zip/ZipFile;
    .restart local v4       #zfile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 392
    .end local v4           #zfile:Ljava/util/zip/ZipFile;
    .restart local v5       #zfile:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v7

    move-object v4, v5

    .end local v5           #zfile:Ljava/util/zip/ZipFile;
    .restart local v4       #zfile:Ljava/util/zip/ZipFile;
    goto :goto_3
.end method

.method private getPackageHashCode(Ljava/lang/String;)I
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/search/SearchPopulator;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 373
    .local v3, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 374
    .local v0, apkPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/search/SearchPopulator;->getFileCrC(Ljava/lang/String;)[B

    move-result-object v1

    .line 375
    .local v1, crc:[B
    if-nez v1, :cond_0

    .line 376
    .end local v0           #apkPath:Ljava/lang/String;
    .end local v1           #crc:[B
    .end local v3           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 376
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #apkPath:Ljava/lang/String;
    .restart local v1       #crc:[B
    .restart local v3       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    goto :goto_0
.end method

.method public static loadSearchData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-static/range {p0 .. p0}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    move-result-object v12

    .line 325
    .local v12, dbHelper:Lcom/android/settings/search/SettingsSearchDatabaseHelper;
    invoke-virtual {v12}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 326
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 327
    .local v10, c:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v16, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;>;"
    if-eqz v10, :cond_2

    .line 330
    sget-object v4, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_LEVEL:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 331
    .local v18, levelIndex:I
    sget-object v4, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_FRAGMENT:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 332
    .local v13, fragmentIndex:I
    sget-object v4, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_TITLE:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 333
    .local v21, titleIndex:I
    sget-object v4, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_ICON:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 334
    .local v15, iconIndex:I
    sget-object v4, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_PARENT_TITLE:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 335
    .local v20, parentIndex:I
    sget-object v4, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_HEADER:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 336
    .local v14, headerIndex:I
    sget-object v4, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_KEY:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 337
    .local v17, keyIndex:I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 339
    .local v11, data:[B
    const/4 v3, 0x0

    .line 340
    .local v3, header:Landroid/preference/PreferenceActivity$Header;
    if-eqz v11, :cond_0

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 342
    .local v19, p:Landroid/os/Parcel;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 343
    const/4 v4, 0x0

    array-length v5, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 344
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    .end local v3           #header:Landroid/preference/PreferenceActivity$Header;
    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 346
    .restart local v3       #header:Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceActivity$Header;->readFromParcel(Landroid/os/Parcel;)V

    .line 349
    .end local v19           #p:Landroid/os/Parcel;
    :cond_0
    new-instance v2, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;-><init>(Landroid/preference/PreferenceActivity$Header;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 352
    .local v2, info:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    .end local v2           #info:Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
    .end local v3           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v11           #data:[B
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 357
    .end local v13           #fragmentIndex:I
    .end local v14           #headerIndex:I
    .end local v15           #iconIndex:I
    .end local v17           #keyIndex:I
    .end local v18           #levelIndex:I
    .end local v20           #parentIndex:I
    .end local v21           #titleIndex:I
    :cond_2
    return-object v16
.end method

.method private parseHeader(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Landroid/preference/PreferenceActivity$Header;
    .locals 13
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 158
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 160
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v7, p2, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 162
    .local v4, sa:Landroid/content/res/TypedArray;
    const/4 v7, -0x1

    invoke-virtual {v4, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 166
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 167
    .local v5, tv:Landroid/util/TypedValue;
    if-eqz v5, :cond_0

    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v7, v9, :cond_0

    .line 168
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_6

    .line 169
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    iput v7, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 176
    :cond_0
    :goto_0
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 177
    if-eqz v5, :cond_1

    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v7, v9, :cond_1

    .line 178
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_7

    .line 179
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    iput v7, v1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 186
    :cond_1
    :goto_1
    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 187
    if-eqz v5, :cond_2

    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v7, v9, :cond_2

    .line 188
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_8

    .line 189
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    iput v7, v1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 196
    :cond_2
    :goto_2
    invoke-virtual {v4, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 198
    iget v7, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    const v8, 0x7f02003f

    if-ne v7, v8, :cond_3

    .line 199
    iput v10, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 203
    :cond_3
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 205
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, args:Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 212
    .local v2, innerDepth:I
    :cond_4
    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    if-eq v6, v11, :cond_b

    if-ne v6, v9, :cond_5

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_b

    .line 213
    :cond_5
    if-eq v6, v9, :cond_4

    if-eq v6, v12, :cond_4

    .line 217
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, innerNodeName:Ljava/lang/String;
    const-string v7, "extra"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "extra"

    invoke-virtual {v7, v8, p2, v0}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 220
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 171
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #innerDepth:I
    .end local v3           #innerNodeName:Ljava/lang/String;
    .end local v6           #type:I
    :cond_6
    iget-object v7, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0

    .line 181
    :cond_7
    iget-object v7, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 191
    :cond_8
    iget-object v7, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_2

    .line 221
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #innerDepth:I
    .restart local v3       #innerNodeName:Ljava/lang/String;
    .restart local v6       #type:I
    :cond_9
    const-string v7, "intent"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1, p2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_3

    .line 224
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 228
    .end local v3           #innerNodeName:Ljava/lang/String;
    :cond_b
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 229
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 232
    :cond_c
    return-object v1
.end method

.method private populateDatabase()V
    .locals 17

    .prologue
    .line 88
    invoke-static/range {p0 .. p0}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    move-result-object v9

    .line 89
    .local v9, dbHelper:Lcom/android/settings/search/SettingsSearchDatabaseHelper;
    invoke-virtual {v9}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->wipeTable()V

    .line 91
    const/4 v14, 0x0

    .line 93
    .local v14, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f05004d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 94
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 98
    .local v8, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .line 100
    .local v16, type:I
    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    .line 102
    :cond_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, nodeName:Ljava/lang/String;
    const-string v1, "preference-headers"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .end local v8           #attrs:Landroid/util/AttributeSet;
    .end local v12           #nodeName:Ljava/lang/String;
    .end local v16           #type:I
    :catch_0
    move-exception v10

    .line 148
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing headers"

    invoke-direct {v1, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v1

    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v1

    .line 109
    .restart local v8       #attrs:Landroid/util/AttributeSet;
    .restart local v12       #nodeName:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_3
    :try_start_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    .line 111
    .local v13, outerDepth:I
    :cond_4
    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    move/from16 v0, v16

    if-ne v0, v1, :cond_5

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v13, :cond_7

    .line 112
    :cond_5
    const/4 v1, 0x3

    move/from16 v0, v16

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    move/from16 v0, v16

    if-eq v0, v1, :cond_4

    .line 116
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 117
    const-string v1, "header"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v4, Lcom/android/settings/R$styleable;->SearchableInfo:[I

    invoke-virtual {v1, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 121
    .local v15, se:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 123
    .local v2, xmlResId:I
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 127
    .local v11, excludeFromSearch:Z
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    if-nez v11, :cond_4

    .line 133
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/settings/search/SearchPopulator;->parseHeader(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    .line 134
    .local v3, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 138
    invoke-virtual {v9, v3}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->insertHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 139
    if-eqz v2, :cond_4

    .line 140
    const/4 v4, 0x1

    iget v5, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    iget-object v6, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget v7, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/search/SearchPopulator;->populateFromXml(ILandroid/preference/PreferenceActivity$Header;IILjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 149
    .end local v2           #xmlResId:I
    .end local v3           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v8           #attrs:Landroid/util/AttributeSet;
    .end local v11           #excludeFromSearch:Z
    .end local v12           #nodeName:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v15           #se:Landroid/content/res/TypedArray;
    .end local v16           #type:I
    :catch_1
    move-exception v10

    .line 150
    .local v10, e:Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing headers"

    invoke-direct {v1, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .end local v10           #e:Ljava/io/IOException;
    .restart local v8       #attrs:Landroid/util/AttributeSet;
    .restart local v12       #nodeName:Ljava/lang/String;
    .restart local v13       #outerDepth:I
    .restart local v16       #type:I
    :cond_6
    :try_start_4
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 152
    :cond_7
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 154
    :cond_8
    return-void
.end method

.method private populateFromXml(ILandroid/preference/PreferenceActivity$Header;IILjava/lang/String;I)V
    .locals 27
    .parameter "xmlResId"
    .parameter "header"
    .parameter "level"
    .parameter "iconRes"
    .parameter "prefFragment"
    .parameter "titleRes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static/range {p0 .. p0}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SettingsSearchDatabaseHelper;

    move-result-object v11

    .line 244
    .local v11, dbHelper:Lcom/android/settings/search/SettingsSearchDatabaseHelper;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v26

    .line 246
    .local v26, xmlParser:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v25

    .line 248
    .local v25, type:I
    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_0

    .line 250
    :cond_1
    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 251
    .local v23, tagName:Ljava/lang/String;
    const-string v2, "PreferenceScreen"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    .end local v23           #tagName:Ljava/lang/String;
    .end local v25           #type:I
    .end local v26           #xmlParser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v2

    .line 321
    :cond_2
    return-void

    .line 257
    .restart local v23       #tagName:Ljava/lang/String;
    .restart local v25       #type:I
    .restart local v26       #xmlParser:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    .line 258
    .local v20, nodeDepth:I
    invoke-static/range {v26 .. v26}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v18

    .line 260
    .local v18, attributeSet:Landroid/util/AttributeSet;
    :cond_4
    :goto_0
    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v25

    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_2

    .line 261
    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_5

    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_4

    .line 265
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, v25

    if-eq v0, v2, :cond_4

    .line 269
    const/4 v2, 0x4

    move/from16 v0, v25

    if-eq v0, v2, :cond_4

    .line 273
    const/4 v12, 0x0

    .line 275
    .local v12, preferenceTitle:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/search/SearchPopulator;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 277
    .local v21, sa:Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/settings/R$styleable;->SearchableInfo:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/search/SearchPopulator;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    .line 280
    .local v22, se:Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v24

    .line 282
    .local v24, title:Landroid/util/TypedValue;
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 283
    move-object/from16 v0, v24

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_7

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 290
    :cond_6
    :goto_1
    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, key:Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 294
    .local v19, excludeFromSearch:Z
    if-nez v19, :cond_4

    .line 298
    const/16 v2, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, fragment:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 302
    .local v3, subXmlId:I
    if-eqz v3, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 303
    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p2

    iget v6, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move-object/from16 v0, v24

    iget v8, v0, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/search/SearchPopulator;->populateFromXml(ILandroid/preference/PreferenceActivity$Header;IILjava/lang/String;I)V

    .line 305
    move-object/from16 v0, p2

    iget v8, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, p3

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->insertEntry(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 315
    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 286
    .end local v3           #subXmlId:I
    .end local v7           #fragment:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v19           #excludeFromSearch:Z
    :cond_7
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 307
    .restart local v3       #subXmlId:I
    .restart local v7       #fragment:Ljava/lang/String;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v19       #excludeFromSearch:Z
    :cond_8
    if-eqz p2, :cond_9

    .line 308
    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 309
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v11, v0, v1, v10}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->insertHeader(Landroid/preference/PreferenceActivity$Header;ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    move/from16 v13, p3

    move-object/from16 v14, p5

    move/from16 v15, p4

    move/from16 v16, p6

    move-object/from16 v17, v10

    .line 311
    invoke-virtual/range {v11 .. v17}, Lcom/android/settings/search/SettingsSearchDatabaseHelper;->insertEntry(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 69
    const-string v6, "notifier"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 70
    .local v4, notifier:Landroid/os/ResultReceiver;
    invoke-virtual {p0}, Lcom/android/settings/search/SearchPopulator;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/android/settings/search/SearchPopulator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 72
    .local v5, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v6, "last_package_hash"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 73
    .local v2, lastHash:I
    invoke-virtual {p0}, Lcom/android/settings/search/SearchPopulator;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/search/SearchPopulator;->getPackageHashCode(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, currentHash:I
    const-string v6, "last_locale"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, lastLocale:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/search/SearchPopulator;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, currentLocale:Ljava/lang/String;
    if-ne v2, v0, :cond_0

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/search/SearchPopulator;->populateDatabase()V

    .line 79
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "last_package_hash"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "last_locale"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    :cond_1
    invoke-virtual {v4, v8, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 85
    return-void
.end method
