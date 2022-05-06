.class public Lcom/ledo/fantasy/update/UpdateEngineActivity;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;,
        Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;,
        Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;
    }
.end annotation


# static fields
.field public static final ANDROID_BUILD_GINGERBREAD:I = 0x9

.field public static final ASYNC_DOWNLOAD_FAILED:I = 0xc

.field public static final ASYNC_DOWNLOAD_NOTIFYSIZE:I = 0xd

.field public static final ASYNC_DOWNLOAD_SUC:I = 0xb

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "UpdateEngine"

.field public static final UPDATEENGINE_COPYGAMESO:Z = true

.field public static final UPDATEENGINE_ENABLED:Z = true

.field public static final UPDATE_ENGINE_NOTIFY_DOWNLOADEND:I = 0x8

.field public static final UPDATE_ENGINE_NOTIFY_DOWNLOADSIZE:I = 0x7

.field public static final UPDATE_ENGINE_NOTIFY_DOWNLOADTOOLARGE:I = 0x9

.field public static final UPDATE_ENGINE_NOTIFY_DOWNLOADTOOLARGE_2:I = 0xe

.field public static final UPDATE_ENGINE_NOTIFY_END:I = 0x3

.field public static final UPDATE_ENGINE_NOTIFY_FAIL:I = 0xa

.field public static final UPDATE_ENGINE_NOTIFY_LATESTVERSION:I = 0x6

.field public static final UPDATE_ENGINE_NOTIFY_LOCALVERSION:I = 0x5

.field public static final UPDATE_ENGINE_NOTIFY_MSG:I = 0x1

.field public static final UPDATE_ENGINE_NOTIFY_START:I = 0x2

.field public static final UPDATE_ENGINE_NOTIFY_STEP:I = 0x4

.field public static mHasCopiedSo:Z

.field private static m_ApkDir:Ljava/lang/String;

.field private static m_AssetsDir:Ljava/lang/String;

.field private static m_HasNewVersion:Z

.field private static m_UpdateActivity:Lcom/ledo/fantasy/update/UpdateEngineActivity;

.field private static m_UpdateFlag:Z

.field private static m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

.field public static m_UpdateThread:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

.field public static m_UpdateThreadLooper:Landroid/os/Looper;

.field private static m_step:Ljava/lang/Integer;

.field private static m_stepHasChange:Ljava/lang/Boolean;

.field public static s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

.field public static s_stackStrDownLoadFailURLKey:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static s_stackStrDownLoadSucURLKey:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mShowAlertAfterVideo:Z

.field private mUpdateEnd:Z

.field private mVideoContainer:Landroid/widget/FrameLayout;

.field private mVideoPlayEnd:Z

.field private mVideoSkip:Landroid/widget/Button;

.field private mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

.field private m_AlertDialog:Landroid/app/AlertDialog;

.field private m_CurVer:Landroid/widget/TextView;

.field private m_Image:Landroid/widget/ImageView;

.field private m_LodingImage:Landroid/widget/ImageView;

.field private m_NewVer:Landroid/widget/TextView;

.field private m_Percent:Landroid/widget/TextView;

.field private m_Receiver:Lcom/ledo/fantasy/update/UpdateProgressReciever;

.field private m_UpdateInfo:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    sput-object v2, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateActivity:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    .line 83
    sput-object v2, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    .line 84
    sput-boolean v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mHasCopiedSo:Z

    .line 87
    sput-object v2, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    .line 88
    sput-object v2, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_ApkDir:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_step:Ljava/lang/Integer;

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_stepHasChange:Ljava/lang/Boolean;

    .line 91
    sput-boolean v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateFlag:Z

    .line 92
    sput-boolean v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_HasNewVersion:Z

    .line 93
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_stackStrDownLoadSucURLKey:Ljava/util/Stack;

    .line 94
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_stackStrDownLoadFailURLKey:Ljava/util/Stack;

    .line 95
    sput-object v2, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThreadLooper:Landroid/os/Looper;

    .line 135
    const-string v0, "updateengine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mUpdateEnd:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    .line 104
    iput-boolean v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mShowAlertAfterVideo:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    .line 76
    return-void
.end method

.method public static CheckMD5(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "MD5fileName"    # Ljava/lang/String;

    .prologue
    .line 1394
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_15

    .line 1396
    :cond_13
    const/4 v15, 0x0

    .line 1438
    :goto_14
    return v15

    .line 1397
    :cond_15
    const/4 v4, 0x0

    .line 1398
    .local v4, "digest":Ljava/security/MessageDigest;
    const/4 v11, 0x0

    .line 1399
    .local v11, "in":Ljava/io/FileInputStream;
    const/16 v15, 0x400

    new-array v3, v15, [B

    .line 1402
    .local v3, "buffer":[B
    :try_start_1b
    const-string v15, "MD5"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 1403
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_d2

    .line 1404
    .end local v11    # "in":Ljava/io/FileInputStream;
    .local v12, "in":Ljava/io/FileInputStream;
    :goto_26
    const/4 v15, 0x0

    const/16 v16, 0x400

    :try_start_29
    move/from16 v0, v16

    invoke-virtual {v12, v3, v15, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    .local v14, "len":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_5c

    .line 1407
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_61

    .line 1412
    new-instance v1, Ljava/math/BigInteger;

    const/4 v15, 0x1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v15, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1413
    .local v1, "bigInt":Ljava/math/BigInteger;
    const/16 v15, 0x10

    invoke-virtual {v1, v15}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1415
    .local v9, "hash":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1416
    .local v7, "file2":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5a

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_68

    .line 1417
    :cond_5a
    const/4 v15, 0x0

    goto :goto_14

    .line 1405
    .end local v1    # "bigInt":Ljava/math/BigInteger;
    .end local v7    # "file2":Ljava/io/File;
    .end local v9    # "hash":Ljava/lang/String;
    :cond_5c
    const/4 v15, 0x0

    :try_start_5d
    invoke-virtual {v4, v3, v15, v14}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_26

    .line 1408
    .end local v14    # "len":I
    :catch_61
    move-exception v5

    move-object v11, v12

    .line 1409
    .end local v12    # "in":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :goto_63
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1410
    const/4 v15, 0x0

    goto :goto_14

    .line 1421
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "bigInt":Ljava/math/BigInteger;
    .restart local v7    # "file2":Ljava/io/File;
    .restart local v9    # "hash":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/FileInputStream;
    .restart local v14    # "len":I
    :cond_68
    :try_start_68
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1422
    .local v8, "fis":Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1423
    .local v13, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1424
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1425
    .local v10, "hash2":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7e} :catch_c3

    .line 1431
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "hash = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,hash2 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1432
    const-string v15, ""

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b0

    const-string v15, ""

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ca

    .line 1433
    :cond_b0
    const-string v15, "hash not equal"

    invoke-static {v15}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1435
    const/4 v15, 0x0

    goto/16 :goto_14

    .line 1426
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "hash2":Ljava/lang/String;
    .end local v13    # "isr":Ljava/io/InputStreamReader;
    :catch_c3
    move-exception v5

    .line 1427
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1428
    const/4 v15, 0x0

    goto/16 :goto_14

    .line 1437
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "hash2":Ljava/lang/String;
    .restart local v13    # "isr":Ljava/io/InputStreamReader;
    :cond_ca
    const-string v15, "hash equal"

    invoke-static {v15}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1438
    const/4 v15, 0x1

    goto/16 :goto_14

    .line 1408
    .end local v1    # "bigInt":Ljava/math/BigInteger;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "file2":Ljava/io/File;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "hash":Ljava/lang/String;
    .end local v10    # "hash2":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/FileInputStream;
    .end local v13    # "isr":Ljava/io/InputStreamReader;
    .end local v14    # "len":I
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_d2
    move-exception v5

    goto :goto_63
.end method

.method public static CreateDir(Ljava/lang/String;)V
    .registers 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 1380
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1382
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1384
    :cond_e
    return-void
.end method

.method public static CreateUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;
    .registers 1

    .prologue
    .line 151
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateActivity:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    if-nez v0, :cond_b

    .line 152
    new-instance v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-direct {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateActivity:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    .line 154
    :cond_b
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateActivity:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    return-object v0
.end method

.method private static DeleteRecuresive(Ljava/io/File;)V
    .registers 11
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 650
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 651
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "children":[Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_c
    if-lt v4, v5, :cond_33

    .line 662
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v3, "to":Ljava/io/File;
    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 664
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 670
    .end local v0    # "children":[Ljava/lang/String;
    :goto_32
    return-void

    .line 652
    .end local v3    # "to":Ljava/io/File;
    .restart local v0    # "children":[Ljava/lang/String;
    :cond_33
    aget-object v1, v0, v4

    .line 653
    .local v1, "i":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    .local v2, "temp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 655
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->DeleteRecuresive(Ljava/io/File;)V

    .line 652
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 657
    :cond_46
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .restart local v3    # "to":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 659
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_43

    .line 666
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":Ljava/lang/String;
    .end local v2    # "temp":Ljava/io/File;
    .end local v3    # "to":Ljava/io/File;
    :cond_6b
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .restart local v3    # "to":Ljava/io/File;
    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 668
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_32
.end method

.method public static GetFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1443
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1445
    :cond_11
    const-string v13, ""

    .line 1470
    :cond_13
    :goto_13
    return-object v13

    .line 1447
    :cond_14
    const/4 v13, 0x0

    .line 1448
    .local v13, "value":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1450
    .local v10, "in":Ljava/io/FileInputStream;
    :try_start_16
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_4b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_5a

    .line 1451
    .end local v10    # "in":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/FileInputStream;
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 1452
    .local v7, "byteBuffer":Ljava/nio/MappedByteBuffer;
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 1453
    .local v12, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v12, v7}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 1454
    new-instance v6, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1455
    .local v6, "bi":Ljava/math/BigInteger;
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_43} :catch_6f
    .catchall {:try_start_1b .. :try_end_43} :catchall_6c

    move-result-object v13

    .line 1461
    if-eqz v11, :cond_6a

    .line 1463
    :try_start_46
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_66

    move-object v10, v11

    .line 1464
    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_13

    .line 1457
    .end local v6    # "bi":Ljava/math/BigInteger;
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v12    # "md5":Ljava/security/MessageDigest;
    :catch_4b
    move-exception v8

    .line 1458
    .local v8, "e":Ljava/lang/Exception;
    :goto_4c
    :try_start_4c
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5a

    .line 1461
    if-eqz v10, :cond_13

    .line 1463
    :try_start_51
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_13

    .line 1465
    :catch_55
    move-exception v8

    .line 1466
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 1460
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5a
    move-exception v0

    .line 1461
    :goto_5b
    if-eqz v10, :cond_60

    .line 1463
    :try_start_5d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    .line 1469
    :cond_60
    :goto_60
    throw v0

    .line 1465
    :catch_61
    move-exception v8

    .line 1466
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 1465
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "bi":Ljava/math/BigInteger;
    .restart local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "md5":Ljava/security/MessageDigest;
    :catch_66
    move-exception v8

    .line 1466
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    :cond_6a
    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_13

    .line 1460
    .end local v6    # "bi":Ljava/math/BigInteger;
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v12    # "md5":Ljava/security/MessageDigest;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catchall_6c
    move-exception v0

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_5b

    .line 1457
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_6f
    move-exception v8

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_4c
.end method

.method public static IsDirectoryExisting(Ljava/lang/String;)Z
    .registers 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 1375
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static NotifyDownLoadSize(Ljava/lang/String;)V
    .registers 3
    .param p0, "sizeString"    # Ljava/lang/String;

    .prologue
    .line 843
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_stepHasChange:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 845
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 846
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 847
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 848
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 849
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_stepHasChange:Ljava/lang/Boolean;

    .line 851
    .end local v0    # "smsg":Landroid/os/Message;
    :cond_1e
    return-void
.end method

.method public static NotifyDownLoadSizeTooLarge(Ljava/lang/String;I)V
    .registers 4
    .param p0, "total"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 854
    const/4 v1, 0x1

    if-ne p1, v1, :cond_14

    .line 856
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 857
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 858
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 859
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    .end local v0    # "smsg":Landroid/os/Message;
    :cond_13
    :goto_13
    return-void

    .line 860
    :cond_14
    const/4 v1, 0x2

    if-ne p1, v1, :cond_13

    .line 861
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 862
    .restart local v0    # "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 863
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 864
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method public static NotifyDownloadEnd()V
    .registers 2

    .prologue
    .line 869
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 870
    .local v0, "smsg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 871
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 873
    const-string v1, "EVENT_UPDATEENGINEACTIVITY_UPDATE_ENGINE_NOTIFY_DOWNLOADEND"

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public static NotifyDownloadFailed(Ljava/lang/String;)V
    .registers 3
    .param p0, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 892
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 893
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 894
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 895
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThread:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    iget-object v1, v1, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->m_UpdateEngineThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 896
    return-void
.end method

.method public static NotifyDownloadSize(ILjava/lang/String;)V
    .registers 4
    .param p0, "notifysize"    # I
    .param p1, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 884
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 885
    .local v0, "smsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 887
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 888
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThread:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    iget-object v1, v1, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->m_UpdateEngineThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 889
    return-void
.end method

.method public static NotifyDownloadSuc(Ljava/lang/String;)V
    .registers 3
    .param p0, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 877
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 878
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 879
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 880
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThread:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    iget-object v1, v1, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->m_UpdateEngineThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 881
    return-void
.end method

.method public static NotifyEnd()V
    .registers 2

    .prologue
    .line 797
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 798
    .local v0, "smsg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 799
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    return-void
.end method

.method private static NotifyFail()V
    .registers 2

    .prologue
    .line 804
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 805
    .local v0, "smsg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 806
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 808
    const-string v1, "EVENT_UPDATEENGINEACTIVITY_UPDATE_ENGINE_NOTIFY_FAIL"

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public static NotifyLatestVersion(Ljava/lang/String;)V
    .registers 3
    .param p0, "newversion"    # Ljava/lang/String;

    .prologue
    .line 769
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 770
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 771
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 772
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 777
    return-void
.end method

.method public static NotifyLocalVersion(Ljava/lang/String;)V
    .registers 3
    .param p0, "localversion"    # Ljava/lang/String;

    .prologue
    .line 758
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 759
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 760
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 761
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    return-void
.end method

.method public static NotifyMsg(Ljava/lang/String;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 780
    const-string v1, "UpdateEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NotifyMsg  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 782
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 784
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    return-void
.end method

.method public static NotifyStart(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 788
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 789
    .local v0, "smsg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 790
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 791
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 793
    const-string v1, "EVENT_UPDATEENGINEACTIVITY_UPDATE_ENGINE_NOTIFY_START"

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public static NotifyStep(I)V
    .registers 3
    .param p0, "step"    # I

    .prologue
    .line 812
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_step:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p0, :cond_24

    .line 814
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 815
    .local v0, "smsg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 816
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 817
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 818
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_step:Ljava/lang/Integer;

    .line 819
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_stepHasChange:Ljava/lang/Boolean;

    .line 821
    .end local v0    # "smsg":Landroid/os/Message;
    :cond_24
    return-void
.end method

.method public static NotifyStep(III)V
    .registers 5
    .param p0, "spro"    # I
    .param p1, "epro"    # I
    .param p2, "sec"    # I

    .prologue
    const/4 v1, -0x1

    .line 824
    if-ne p0, p1, :cond_13

    .line 825
    invoke-static {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyStep(I)V

    .line 826
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    if-eqz v0, :cond_12

    .line 827
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/update/ProRunnable;->setEpro(I)V

    .line 828
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    .line 840
    :cond_12
    :goto_12
    return-void

    .line 831
    :cond_13
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    if-eqz v0, :cond_1c

    .line 832
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/update/ProRunnable;->setEpro(I)V

    .line 834
    :cond_1c
    new-instance v0, Lcom/ledo/fantasy/update/ProRunnable;

    invoke-direct {v0}, Lcom/ledo/fantasy/update/ProRunnable;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    .line 835
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/update/ProRunnable;->setSpro(I)V

    .line 836
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    invoke-virtual {v0, p1}, Lcom/ledo/fantasy/update/ProRunnable;->setEpro(I)V

    .line 837
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    invoke-virtual {v0, p2}, Lcom/ledo/fantasy/update/ProRunnable;->setSec(I)V

    .line 838
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_ProThread:Lcom/ledo/fantasy/update/ProRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_12
.end method

.method public static NotifyUrlDownloadFailed(Ljava/lang/String;I)V
    .registers 4
    .param p0, "urlkey"    # Ljava/lang/String;
    .param p1, "myindex"    # I

    .prologue
    .line 916
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_stackStrDownLoadFailURLKey:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 917
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->DownLoadShutDown()V

    .line 919
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/update/UpdateEngineActivity$5;

    invoke-direct {v1}, Lcom/ledo/fantasy/update/UpdateEngineActivity$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 929
    return-void
.end method

.method public static NotifyUrlDownloadSuc(Ljava/lang/String;I)V
    .registers 4
    .param p0, "urlkey"    # Ljava/lang/String;
    .param p1, "myindex"    # I

    .prologue
    .line 900
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_stackStrDownLoadSucURLKey:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 901
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->DownLoadShutDown()V

    .line 903
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/update/UpdateEngineActivity$4;

    invoke-direct {v1}, Lcom/ledo/fantasy/update/UpdateEngineActivity$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method

.method public static RemoveDir(Ljava/lang/String;)V
    .registers 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 1387
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1389
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->DeleteRecuresive(Ljava/io/File;)V

    .line 1391
    :cond_e
    return-void
.end method

.method public static UploadErrorFiles(Ljava/lang/String;)V
    .registers 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 754
    invoke-static {p0}, Lcom/ledo/fantasy/game/NativeCrashManager;->uploadUpdateErrorLog(Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Percent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10()Z
    .registers 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_HasNewVersion:Z

    return v0
.end method

.method static synthetic access$11(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    return v0
.end method

.method static synthetic access$12(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V
    .registers 2

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mShowAlertAfterVideo:Z

    return-void
.end method

.method static synthetic access$13(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_LodingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getBackImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Z)V
    .registers 1

    .prologue
    .line 91
    sput-boolean p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateFlag:Z

    return-void
.end method

.method static synthetic access$17(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getGooglePlayStroeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V
    .registers 2

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    return-void
.end method

.method static synthetic access$19(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Lcom/ledo/fantasy/game/Cocos2dxVideoView;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V
    .registers 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mUpdateEnd:Z

    return-void
.end method

.method static synthetic access$20(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/ledo/fantasy/update/UpdateEngineActivity;Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    return-void
.end method

.method static synthetic access$3(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V
    .registers 1

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->updateEngineRunEnd()V

    return-void
.end method

.method static synthetic access$4(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V
    .registers 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$5(Lcom/ledo/fantasy/update/UpdateEngineActivity;Landroid/app/AlertDialog;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_CurVer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_NewVer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateFlag:Z

    return v0
.end method

.method private copyAssetsFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "srcFileName"    # Ljava/lang/String;
    .param p2, "srcDirPath"    # Ljava/lang/String;
    .param p3, "destDirPath"    # Ljava/lang/String;

    .prologue
    .line 673
    const/4 v4, 0x0

    .line 674
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 676
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_2
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .local v8, "outFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 678
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 679
    :cond_27
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ledo/fantasy/game/GameApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 680
    const-string v11, "UpdateEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "copy file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "check":Z
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_99

    .line 684
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 685
    const-string v11, "UpdateEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "copyAssetsFile:copyFile: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_85
    if-nez v1, :cond_8e

    .line 710
    const-string v11, "UpdateEngine"

    const-string v12, "May be there is some error when copyAssetsFile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_8e} :catch_15e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8e} :catch_e2
    .catchall {:try_start_2 .. :try_end_8e} :catchall_136

    .line 737
    :cond_8e
    if-eqz v4, :cond_93

    .line 738
    :try_start_90
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_14c

    .line 744
    :cond_93
    :goto_93
    if-eqz v6, :cond_98

    .line 745
    :try_start_95
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_152

    .line 751
    .end local v1    # "check":Z
    .end local v8    # "outFile":Ljava/io/File;
    :cond_98
    :goto_98
    return-void

    .line 689
    .restart local v1    # "check":Z
    .restart local v8    # "outFile":Ljava/io/File;
    :cond_99
    :try_start_99
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 690
    .local v9, "parent":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a7

    .line 691
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 694
    :cond_a7
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 695
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v7, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_b1} :catch_15e
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b1} :catch_e2
    .catchall {:try_start_99 .. :try_end_b1} :catchall_136

    .line 699
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v11, 0x400

    :try_start_b3
    new-array v0, v11, [B

    .line 701
    .local v0, "buf":[B
    :goto_b5
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-gtz v5, :cond_c3

    .line 705
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 706
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_85

    .line 702
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_c3
    const/4 v11, 0x0

    invoke-virtual {v7, v0, v11, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_c7} :catch_c8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_c7} :catch_15b
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_158

    goto :goto_b5

    .line 713
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    :catch_c8
    move-exception v2

    move-object v6, v7

    .line 715
    .end local v1    # "check":Z
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "parent":Ljava/io/File;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_ca
    :try_start_ca
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_136

    .line 737
    if-eqz v4, :cond_d2

    .line 738
    :try_start_cf
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_dd

    .line 744
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_d2
    :goto_d2
    if-eqz v6, :cond_98

    .line 745
    :try_start_d4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_98

    .line 747
    :catch_d8
    move-exception v2

    .line 748
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_98

    .line 740
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_dd
    move-exception v2

    .line 741
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    .line 717
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e2
    move-exception v2

    .line 719
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_e3
    :try_start_e3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 720
    const-class v11, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    if-ne v11, v12, :cond_118

    .line 721
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "No space left on device"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_118

    .line 722
    const-string v10, "\u701b\u6a3a\u504d\u7ecc\u6d2a\u68ff\u6d93\u5d88\u51bb\u951b\ufffd"
    :try_end_fd
    .catchall {:try_start_e3 .. :try_end_fd} :catchall_136

    .line 724
    .local v10, "strTips":Ljava/lang/String;
    :try_start_fd
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v11

    sget v12, Lcom/ledo/fantasy/game/R$string;->no_space_tip:I

    invoke-virtual {v11, v12}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_106} :catch_12a
    .catchall {:try_start_fd .. :try_end_106} :catchall_136

    move-result-object v10

    .line 729
    :goto_107
    :try_start_107
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 730
    const-string v11, "EVENT_NO_SPACE_LEFT_ON_DEVICE"

    invoke-static {v11, v2}, Lcom/ledo/fantasy/game/FlurryManager;->LogEventException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_118
    .catchall {:try_start_107 .. :try_end_118} :catchall_136

    .line 737
    .end local v10    # "strTips":Ljava/lang/String;
    :cond_118
    if-eqz v4, :cond_11d

    .line 738
    :try_start_11a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_131

    .line 744
    :cond_11d
    :goto_11d
    if-eqz v6, :cond_98

    .line 745
    :try_start_11f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_124

    goto/16 :goto_98

    .line 747
    :catch_124
    move-exception v2

    .line 748
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_98

    .line 725
    .restart local v10    # "strTips":Ljava/lang/String;
    :catch_12a
    move-exception v3

    .line 726
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_12b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 727
    const-string v10, "\u701b\u6a3a\u504d\u7ecc\u6d2a\u68ff\u6d93\u5d88\u51bb\u951b\ufffd"
    :try_end_130
    .catchall {:try_start_12b .. :try_end_130} :catchall_136

    goto :goto_107

    .line 740
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v10    # "strTips":Ljava/lang/String;
    :catch_131
    move-exception v2

    .line 741
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11d

    .line 735
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_136
    move-exception v11

    .line 737
    :goto_137
    if-eqz v4, :cond_13c

    .line 738
    :try_start_139
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_142

    .line 744
    :cond_13c
    :goto_13c
    if-eqz v6, :cond_141

    .line 745
    :try_start_13e
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_147

    .line 750
    :cond_141
    :goto_141
    throw v11

    .line 740
    :catch_142
    move-exception v2

    .line 741
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13c

    .line 747
    .end local v2    # "e":Ljava/io/IOException;
    :catch_147
    move-exception v2

    .line 748
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_141

    .line 740
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "check":Z
    .restart local v8    # "outFile":Ljava/io/File;
    :catch_14c
    move-exception v2

    .line 741
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_93

    .line 747
    .end local v2    # "e":Ljava/io/IOException;
    :catch_152
    move-exception v2

    .line 748
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_98

    .line 735
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v9    # "parent":Ljava/io/File;
    :catchall_158
    move-exception v11

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_137

    .line 717
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_15b
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_e3

    .line 713
    .end local v1    # "check":Z
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "parent":Ljava/io/File;
    :catch_15e
    move-exception v2

    goto/16 :goto_ca
.end method

.method private static copyGameSo()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v6

    sget v7, Lcom/ledo/fantasy/game/R$string;->gameso_name:I

    invoke-virtual {v6, v7}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "soName":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->gameso_res_path:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, "soResPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "fullSoResPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, "so":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 597
    const-string v5, "EVENT_UPDATEENGINEACTIVITY_COPY_LIBGAMESO"

    invoke-static {v5, v8}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 601
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->gameso_private_path:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "soPrivatePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAppPrivateDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->copyLib(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .end local v3    # "soPrivatePath":Ljava/lang/String;
    :cond_79
    sput-boolean v8, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mHasCopiedSo:Z

    .line 608
    return-void
.end method

.method public static copyLib(Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;

    .prologue
    .line 544
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "copyLib "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 545
    const/4 v8, 0x0

    .line 546
    .local v8, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 549
    .local v11, "out":Ljava/io/OutputStream;
    :try_start_22
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "dirArray":[Ljava/lang/String;
    const-string v3, ""

    .line 551
    .local v3, "dirString":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2d
    array-length v14, v2

    add-int/lit8 v14, v14, -0x1

    if-lt v7, v14, :cond_82

    .line 554
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v4, "dstDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_40

    .line 556
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 559
    :cond_40
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v13, "srcfile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v5, "dstfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_57

    .line 563
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 565
    :cond_57
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 567
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_5f} :catch_d8
    .catchall {:try_start_22 .. :try_end_5f} :catchall_b9

    .line 568
    .end local v8    # "in":Ljava/io/InputStream;
    .local v9, "in":Ljava/io/InputStream;
    :try_start_5f
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_da
    .catchall {:try_start_5f .. :try_end_64} :catchall_d1

    .line 570
    .end local v11    # "out":Ljava/io/OutputStream;
    .local v12, "out":Ljava/io/OutputStream;
    const/16 v14, 0x400

    :try_start_66
    new-array v1, v14, [B

    .line 571
    .local v1, "buf":[B
    const/4 v10, 0x0

    .line 572
    .local v10, "len":I
    :goto_69
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-gtz v10, :cond_9e

    .line 575
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 576
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_75} :catch_a3
    .catchall {:try_start_66 .. :try_end_75} :catchall_d4

    .line 581
    if-eqz v9, :cond_7a

    .line 582
    :try_start_77
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 583
    :cond_7a
    if-eqz v12, :cond_ce

    .line 584
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_ca

    move-object v11, v12

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    move-object v8, v9

    .line 589
    .end local v1    # "buf":[B
    .end local v2    # "dirArray":[Ljava/lang/String;
    .end local v3    # "dirString":Ljava/lang/String;
    .end local v4    # "dstDir":Ljava/io/File;
    .end local v5    # "dstfile":Ljava/io/File;
    .end local v7    # "i":I
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "len":I
    .end local v13    # "srcfile":Ljava/io/File;
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_81
    :goto_81
    return-void

    .line 552
    .restart local v2    # "dirArray":[Ljava/lang/String;
    .restart local v3    # "dirString":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_82
    :try_start_82
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v15, v2, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_9a} :catch_d8
    .catchall {:try_start_82 .. :try_end_9a} :catchall_b9

    move-result-object v3

    .line 551
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 573
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v1    # "buf":[B
    .restart local v4    # "dstDir":Ljava/io/File;
    .restart local v5    # "dstfile":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "len":I
    .restart local v12    # "out":Ljava/io/OutputStream;
    .restart local v13    # "srcfile":Ljava/io/File;
    :cond_9e
    const/4 v14, 0x0

    :try_start_9f
    invoke-virtual {v12, v1, v14, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3
    .catchall {:try_start_9f .. :try_end_a2} :catchall_d4

    goto :goto_69

    .line 577
    .end local v1    # "buf":[B
    .end local v10    # "len":I
    :catch_a3
    move-exception v6

    move-object v11, v12

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    move-object v8, v9

    .line 578
    .end local v2    # "dirArray":[Ljava/lang/String;
    .end local v3    # "dirString":Ljava/lang/String;
    .end local v4    # "dstDir":Ljava/io/File;
    .end local v5    # "dstfile":Ljava/io/File;
    .end local v7    # "i":I
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v13    # "srcfile":Ljava/io/File;
    .local v6, "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/InputStream;
    :goto_a6
    :try_start_a6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b9

    .line 581
    if-eqz v8, :cond_ae

    .line 582
    :try_start_ab
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 583
    :cond_ae
    if-eqz v11, :cond_81

    .line 584
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b3} :catch_b4

    goto :goto_81

    .line 585
    :catch_b4
    move-exception v6

    .line 586
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 579
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_b9
    move-exception v14

    .line 581
    :goto_ba
    if-eqz v8, :cond_bf

    .line 582
    :try_start_bc
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 583
    :cond_bf
    if-eqz v11, :cond_c4

    .line 584
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c4} :catch_c5

    .line 588
    :cond_c4
    :goto_c4
    throw v14

    .line 585
    :catch_c5
    move-exception v6

    .line 586
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    .line 585
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "dirArray":[Ljava/lang/String;
    .restart local v3    # "dirString":Ljava/lang/String;
    .restart local v4    # "dstDir":Ljava/io/File;
    .restart local v5    # "dstfile":Ljava/io/File;
    .restart local v7    # "i":I
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "len":I
    .restart local v12    # "out":Ljava/io/OutputStream;
    .restart local v13    # "srcfile":Ljava/io/File;
    :catch_ca
    move-exception v6

    .line 586
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    :cond_ce
    move-object v11, v12

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    goto :goto_81

    .line 579
    .end local v1    # "buf":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "len":I
    .restart local v9    # "in":Ljava/io/InputStream;
    :catchall_d1
    move-exception v14

    move-object v8, v9

    .end local v9    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    goto :goto_ba

    .end local v8    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :catchall_d4
    move-exception v14

    move-object v11, v12

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    goto :goto_ba

    .line 577
    .end local v2    # "dirArray":[Ljava/lang/String;
    .end local v3    # "dirString":Ljava/lang/String;
    .end local v4    # "dstDir":Ljava/io/File;
    .end local v5    # "dstfile":Ljava/io/File;
    .end local v7    # "i":I
    .end local v13    # "srcfile":Ljava/io/File;
    :catch_d8
    move-exception v6

    goto :goto_a6

    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v2    # "dirArray":[Ljava/lang/String;
    .restart local v3    # "dirString":Ljava/lang/String;
    .restart local v4    # "dstDir":Ljava/io/File;
    .restart local v5    # "dstfile":Ljava/io/File;
    .restart local v7    # "i":I
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v13    # "srcfile":Ljava/io/File;
    :catch_da
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    goto :goto_a6
.end method

.method public static getApkDir()Ljava/lang/String;
    .registers 6

    .prologue
    .line 500
    sget-object v4, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_ApkDir:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 501
    sget-object v4, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_ApkDir:Ljava/lang/String;

    .line 513
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "packMgmr":Landroid/content/pm/PackageManager;
    .local v3, "packageName":Ljava/lang/String;
    :goto_6
    return-object v4

    .line 503
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packMgmr":Landroid/content/pm/PackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ledo/fantasy/game/GameApp;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 504
    .restart local v3    # "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 505
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ledo/fantasy/game/GameApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 507
    .restart local v2    # "packMgmr":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_1d
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_20} :catch_28

    move-result-object v0

    .line 512
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v4, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_ApkDir:Ljava/lang/String;

    .line 513
    sget-object v4, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_ApkDir:Ljava/lang/String;

    goto :goto_6

    .line 508
    :catch_28
    move-exception v1

    .line 509
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 510
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to locate assets, aborting..."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getAppPrivateDir()Ljava/lang/String;
    .registers 1

    .prologue
    .line 540
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppResVersion(Ljava/lang/String;)I
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 611
    const/4 v3, 0x0

    .line 612
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 613
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    .line 614
    .local v1, "document":Lorg/w3c/dom/Document;
    const/4 v4, 0x0

    .line 615
    .local v4, "inputstream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 617
    :try_start_8
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 618
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ledo/fantasy/game/GameApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 619
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 620
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 621
    .local v5, "root":Lorg/w3c/dom/Element;
    const-string v7, "version"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2d} :catch_39
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_2d} :catch_49
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_2d} :catch_58
    .catchall {:try_start_8 .. :try_end_2d} :catchall_67

    move-result v6

    .line 631
    .local v6, "version":I
    if-eqz v4, :cond_33

    .line 632
    :try_start_30
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 637
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "version":I
    :cond_33
    :goto_33
    return v6

    .line 633
    .restart local v5    # "root":Lorg/w3c/dom/Element;
    .restart local v6    # "version":I
    :catch_34
    move-exception v2

    .line 634
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 623
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "version":I
    :catch_39
    move-exception v2

    .line 624
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_67

    .line 631
    if-eqz v4, :cond_42

    .line 632
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_44

    .line 637
    .end local v2    # "e":Ljava/io/IOException;
    :cond_42
    :goto_42
    const/4 v6, -0x1

    goto :goto_33

    .line 633
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_44
    move-exception v2

    .line 634
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 625
    .end local v2    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v2

    .line 626
    .local v2, "e":Lorg/xml/sax/SAXException;
    :try_start_4a
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_67

    .line 631
    if-eqz v4, :cond_42

    .line 632
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_42

    .line 633
    :catch_53
    move-exception v2

    .line 634
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 627
    .end local v2    # "e":Ljava/io/IOException;
    :catch_58
    move-exception v2

    .line 628
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_59
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_67

    .line 631
    if-eqz v4, :cond_42

    .line 632
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_42

    .line 633
    :catch_62
    move-exception v2

    .line 634
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 629
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_67
    move-exception v7

    .line 631
    if-eqz v4, :cond_6d

    .line 632
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 636
    :cond_6d
    :goto_6d
    throw v7

    .line 633
    :catch_6e
    move-exception v2

    .line 634
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d
.end method

.method public static getAssetsOutDir()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 518
    sget-object v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 519
    sget-object v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    .line 534
    .local v0, "c":Landroid/content/Context;
    .local v1, "d":Ljava/lang/String;
    .local v2, "e":Ljava/io/File;
    :goto_7
    return-object v3

    .line 521
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "d":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/File;
    :cond_8
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 522
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    .line 523
    .restart local v0    # "c":Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 524
    .restart local v2    # "e":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 525
    .restart local v1    # "d":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/gamedata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    .line 526
    const-string v3, "getAssetsOutDir"

    sget-object v4, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    goto :goto_7

    .line 529
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "d":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/File;
    :cond_43
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    .line 530
    .restart local v0    # "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 531
    .restart local v2    # "e":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 532
    .restart local v1    # "d":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/gamedata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    .line 533
    const-string v3, "getAssetsOutDir"

    sget-object v4, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AssetsDir:Ljava/lang/String;

    goto :goto_7
.end method

.method private getBackImage()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    .line 238
    const-string v3, "loadingback1.jpg"

    .line 241
    .local v3, "loadingbackimg":Ljava/lang/String;
    :try_start_2
    const-string v4, "getBackImage"

    const-string v5, "getBackImage try1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ledo/fantasy/game/GameApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 243
    .local v2, "inputStream":Ljava/io/InputStream;
    const-string v4, "getBackImage"

    const-string v5, "getBackImage try2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v4, "getBackImage"

    const-string v5, "getBackImage try3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_28

    .line 255
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_27
    return-object v0

    .line 248
    :catch_28
    move-exception v1

    .line 250
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "getBackImage"

    const-string v5, "getBackImage IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    const-string v4, "getBackImage"

    const-string v5, "getBackImage null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private static native getDocResVersion(Ljava/lang/String;)I
.end method

.method private getGooglePlayStroeUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 324
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceUpdateUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1489
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    sget v3, Lcom/ledo/fantasy/game/R$string;->update_default_select_url:I

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, "DEFAULT_URL":Ljava/lang/String;
    move-object v1, v0

    .line 1492
    .local v1, "REAL_URL":Ljava/lang/String;
    return-object v1
.end method

.method public static getUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateActivity:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    return-object v0
.end method

.method public static native nativeContinueResourceUpdate()V
.end method

.method public static native nativeStartResourceUpdate()V
.end method

.method private static native nativemountArtresTest(Ljava/lang/String;)I
.end method

.method private needToCopyNewRes(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAppResVersion(Ljava/lang/String;)I

    move-result v0

    .line 642
    .local v0, "appversion":I
    invoke-static {p2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getDocResVersion(Ljava/lang/String;)I

    move-result v1

    .line 643
    .local v1, "docversion":I
    if-ltz v0, :cond_e

    if-le v0, v1, :cond_e

    .line 644
    const/4 v2, 0x1

    .line 646
    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static needToSelectUpdateUrl()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1474
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->update_need_select:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1475
    .local v1, "needtoselect":I
    if-nez v1, :cond_13

    .line 1485
    :cond_12
    :goto_12
    return v3

    .line 1477
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/artres/updatetype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ledo/fantasy/update/Utils;->loadConfig(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    .line 1478
    .local v2, "prop":Ljava/util/Properties;
    if-eqz v2, :cond_44

    .line 1479
    const-string v5, "haveselected"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1480
    .local v0, "has_selectString":Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 1481
    const-string v5, "yes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    move v3, v4

    goto :goto_12

    .end local v0    # "has_selectString":Ljava/lang/String;
    :cond_44
    move v3, v4

    .line 1485
    goto :goto_12
.end method

.method private playVideo()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1238
    const-string v7, "UpdateEngineActivity_PrepareVideo"

    invoke-static {v7}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1239
    const/4 v5, 0x0

    .line 1240
    .local v5, "played":Z
    if-nez v5, :cond_af

    .line 1241
    iput-boolean v8, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    .line 1242
    const-string v7, "UpdateEngineActivity_PlayVideo"

    invoke-static {v7}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1244
    :try_start_11
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_a5

    .line 1245
    .local v1, "disMetrics":Landroid/util/DisplayMetrics;
    const/16 v6, 0x320

    .line 1246
    .local v6, "width":I
    const/16 v3, 0x258

    .line 1248
    .local v3, "height":I
    :try_start_1a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1253
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ledo/fantasy/game/GameApp;->getScreenWidthInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1254
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ledo/fantasy/game/GameApp;->getScreenHeightInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_33} :catch_a0

    move-result v3

    .line 1259
    :goto_34
    :try_start_34
    new-instance v4, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;

    invoke-direct {v4, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    .line 1276
    .local v4, "ls":Landroid/media/MediaPlayer$OnErrorListener;
    new-instance v7, Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;-><init>(Landroid/app/Activity;I)V

    iput-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 1277
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const-string v8, "logo.mp4"

    invoke-virtual {v7, v8}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setVideoFileName(Ljava/lang/String;)V

    .line 1278
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setVideoRect(IIII)V

    .line 1279
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v6, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setFullScreenEnabled(ZII)V

    .line 1280
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setKeepRatio(Z)V

    .line 1281
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setCanPause(Z)V

    .line 1282
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setCanSeekPlay(Z)V

    .line 1283
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v7, v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1284
    new-instance v0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;)V

    .line 1285
    .local v0, "callback":Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v7, v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setOnCompletionListener(Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;)V

    .line 1286
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    const-string v8, "#000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1287
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1288
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1289
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ledo/fantasy/game/IcefireMusic;->pauseBackgroundMusic()V

    .line 1290
    iget-object v7, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v7}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->start()V

    .line 1302
    .end local v0    # "callback":Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;
    .end local v1    # "disMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "height":I
    .end local v4    # "ls":Landroid/media/MediaPlayer$OnErrorListener;
    .end local v6    # "width":I
    :goto_9f
    return-void

    .line 1255
    .restart local v1    # "disMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "height":I
    .restart local v6    # "width":I
    :catch_a0
    move-exception v2

    .line 1256
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_a4} :catch_a5

    goto :goto_34

    .line 1291
    .end local v1    # "disMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "height":I
    .end local v6    # "width":I
    :catch_a5
    move-exception v2

    .line 1292
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1294
    iput-boolean v10, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    .line 1295
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->updateEngineRunEnd()V

    goto :goto_9f

    .line 1299
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_af
    const-string v7, "UpdateEngineActivity_NoVideo"

    invoke-static {v7}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1300
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->updateEngineRunEnd()V

    goto :goto_9f
.end method

.method public static saveHaveSelectUpdateUrl()V
    .registers 3

    .prologue
    .line 1496
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1497
    .local v0, "prop":Ljava/util/Properties;
    if-eqz v0, :cond_28

    .line 1498
    const-string v1, "haveselected"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/artres/updatetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ledo/fantasy/update/Utils;->saveConfig(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 1501
    :cond_28
    return-void
.end method

.method private startUpdate()V
    .registers 2

    .prologue
    .line 318
    new-instance v0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThread:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    .line 319
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThread:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->start()V

    .line 321
    return-void
.end method

.method public static unZipFileToTargetDir(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 401
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 402
    .local v5, "fileIn":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 403
    .local v1, "bufIn":Ljava/io/BufferedInputStream;
    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 404
    .local v10, "zipIn":Ljava/util/zip/ZipInputStream;
    const/4 v9, 0x0

    .line 406
    .local v9, "zipEntry":Ljava/util/zip/ZipEntry;
    const/high16 v2, 0x100000

    .line 408
    .local v2, "bufSize":I
    new-array v0, v2, [B

    .line 409
    .local v0, "buf":[B
    const-string v11, "UpdateEngine"

    const-string v12, "unZipFile:Unzip Start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_1b
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-nez v9, :cond_33

    .line 431
    const-string v11, "UpdateEngine"

    const-string v12, "unZipFile:Unzip End"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V

    .line 435
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 436
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 437
    const/4 v11, 0x1

    .line 440
    .end local v0    # "buf":[B
    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v2    # "bufSize":I
    .end local v5    # "fileIn":Ljava/io/InputStream;
    .end local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_32
    return v11

    .line 413
    .restart local v0    # "buf":[B
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufSize":I
    .restart local v5    # "fileIn":Ljava/io/InputStream;
    .restart local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipIn":Ljava/util/zip/ZipInputStream;
    :cond_33
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 415
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 416
    const-string v11, "UpdateEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "unZipFile:Unzip File: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_74} :catch_75

    goto :goto_1b

    .line 438
    .end local v0    # "buf":[B
    .end local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v2    # "bufSize":I
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileIn":Ljava/io/InputStream;
    .end local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "zipIn":Ljava/util/zip/ZipInputStream;
    :catch_75
    move-exception v3

    .line 439
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 440
    const/4 v11, 0x0

    goto :goto_32

    .line 418
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v1    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufSize":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileIn":Ljava/io/InputStream;
    .restart local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipIn":Ljava/util/zip/ZipInputStream;
    :cond_7b
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 419
    .local v7, "parent":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_88

    .line 420
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 423
    :cond_88
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 424
    .local v6, "fileOut":Ljava/io/FileOutputStream;
    :goto_8d
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v8

    .local v8, "readerBytes":I
    if-gtz v8, :cond_b0

    .line 427
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 428
    const-string v11, "UpdateEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "unZipFile:Unzip File: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 425
    :cond_b0
    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_b4} :catch_75

    goto :goto_8d
.end method

.method private updateEngineRunEnd()V
    .registers 2

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mUpdateEnd:Z

    if-nez v0, :cond_9

    .line 950
    :cond_8
    :goto_8
    return-void

    .line 937
    :cond_9
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->copyGameSo()V

    .line 941
    sget-boolean v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_HasNewVersion:Z

    if-nez v0, :cond_8

    .line 942
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThreadLooper:Landroid/os/Looper;

    if-eqz v0, :cond_19

    .line 943
    sget-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThreadLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 946
    :cond_19
    const-string v0, "EVENT_UPDATE_END"

    invoke-static {v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->onDestroy()V

    .line 948
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->onUpdateEngineEnded()V

    goto :goto_8
.end method


# virtual methods
.method public checkVersion()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 329
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    invoke-static {v5}, Lcom/ledo/fantasy/update/AppUpdateManager;->hasNewVersion(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 331
    const-string v5, "EVENT_HASNEWAPK"

    invoke-static {v5}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 332
    sput-boolean v4, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_HasNewVersion:Z

    .line 334
    :try_start_13
    sget-object v5, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThread:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->interrupt:Z

    .line 335
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->ShutDown()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_28

    .line 340
    :goto_1b
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    new-instance v6, Lcom/ledo/fantasy/update/UpdateEngineActivity$3;

    invoke-direct {v6, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$3;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    :goto_27
    return v4

    .line 336
    :catch_28
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    const-string v4, "EVENT_NONEWAPK"

    invoke-static {v4}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 381
    const/4 v2, 0x0

    .local v2, "updateDir":Ljava/io/File;
    const/4 v3, 0x0

    .line 382
    .local v3, "updateFile":Ljava/io/File;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    sget v5, Lcom/ledo/fantasy/game/R$string;->local_apkName:I

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "localApkName":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/ledo/fantasy/game/GameApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 384
    new-instance v2, Ljava/io/File;

    .end local v2    # "updateDir":Ljava/io/File;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/ledo/fantasy/game/GameApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ledo/fantasy/update/AppUpdateManager;->m_DownloadDir:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .restart local v2    # "updateDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3    # "updateFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .restart local v3    # "updateFile":Ljava/io/File;
    :goto_64
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 391
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 395
    :cond_6d
    const/4 v4, 0x0

    goto :goto_27

    .line 387
    :cond_6f
    new-instance v2, Ljava/io/File;

    .end local v2    # "updateDir":Ljava/io/File;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ledo/fantasy/game/GameApp;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ledo/fantasy/update/AppUpdateManager;->m_DownloadDir:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .restart local v2    # "updateDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3    # "updateFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "updateFile":Ljava/io/File;
    goto :goto_64
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 1365
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1368
    :cond_9
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Receiver:Lcom/ledo/fantasy/update/UpdateProgressReciever;

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1370
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    if-eqz v0, :cond_a

    .line 1356
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setVisibility(I)V

    .line 1358
    :cond_a
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->pauseBackgroundMusic()V

    .line 1361
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 1342
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    if-eqz v0, :cond_f

    .line 1344
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setVisibility(I)V

    .line 1351
    :goto_e
    return-void

    .line 1348
    :cond_f
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->resumeBackgroundMusic()V

    goto :goto_e
.end method

.method public onVideoPlayEnd()V
    .registers 3

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    if-nez v0, :cond_26

    .line 1325
    const-string v0, "UpdateEngineActivity_VideoPlayEnd"

    invoke-static {v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1327
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    .line 1331
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->resumeBackgroundMusic()V

    .line 1332
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->startUpdate()V

    .line 1335
    :cond_26
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mShowAlertAfterVideo:Z

    if-eqz v0, :cond_33

    .line 1337
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1339
    :cond_33
    return-void
.end method

.method public showUpdateEngineView()V
    .registers 7

    .prologue
    const/16 v5, 0x80

    .line 162
    const-string v3, "UpdateEngine"

    const-string v4, "UpdateEngine onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sput-object v3, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    .line 167
    const-string v3, "EVENT_UPDATEENGINEACTIVITY_ONCREATE"

    invoke-static {v3}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 169
    const/4 v3, 0x0

    sput-boolean v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mHasCopiedSo:Z

    .line 171
    invoke-static {}, Lcom/ledo/fantasy/game/CrashHandler;->getInstance()Lcom/ledo/fantasy/game/CrashHandler;

    move-result-object v0

    .line 172
    .local v0, "crashHandler":Lcom/ledo/fantasy/game/CrashHandler;
    invoke-virtual {v0}, Lcom/ledo/fantasy/game/CrashHandler;->init()V

    .line 174
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_2c

    .line 175
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->setRequestedOrientation(I)V

    .line 177
    :cond_2c
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ledo/fantasy/game/GameApp;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 178
    sget v2, Lcom/ledo/fantasy/game/R$layout;->updateengine:I

    .line 179
    .local v2, "updatelayout":I
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ledo/fantasy/game/GameApp;->setContentView(I)V

    .line 181
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$id;->videoContainer:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    .line 193
    new-instance v3, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V

    sput-object v3, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateHandler:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    .line 196
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->startUpdate()V

    .line 197
    new-instance v3, Lcom/ledo/fantasy/update/UpdateProgressReciever;

    invoke-direct {v3}, Lcom/ledo/fantasy/update/UpdateProgressReciever;-><init>()V

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Receiver:Lcom/ledo/fantasy/update/UpdateProgressReciever;

    .line 198
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.UPDATE_RECEIVER"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    iget-object v4, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Receiver:Lcom/ledo/fantasy/update/UpdateProgressReciever;

    invoke-virtual {v3, v4, v1}, Lcom/ledo/fantasy/game/GameApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$id;->textViewInfo:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateInfo:Landroid/widget/TextView;

    .line 203
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$id;->textViewPercent:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Percent:Landroid/widget/TextView;

    .line 204
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$id;->textViewCurVer:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_CurVer:Landroid/widget/TextView;

    .line 205
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$id;->textViewNewVer:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_NewVer:Landroid/widget/TextView;

    .line 206
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$id;->imageView:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_LodingImage:Landroid/widget/ImageView;

    .line 207
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$id;->image:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Image:Landroid/widget/ImageView;

    .line 210
    iget-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_LodingImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/ledo/fantasy/update/UpdateEngineActivity$1;

    invoke-direct {v4, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$1;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Image:Landroid/widget/ImageView;

    new-instance v4, Lcom/ledo/fantasy/update/UpdateEngineActivity$2;

    invoke-direct {v4, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$2;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 223
    iget-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateInfo:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Percent:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_CurVer:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_NewVer:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-static {}, Lcom/ledo/fantasy/game/NativeCrashManager;->createUpdateLogFile()V

    .line 234
    return-void
.end method

.method public stopVideo()V
    .registers 3

    .prologue
    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z

    .line 1307
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    if-eqz v0, :cond_23

    .line 1309
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->stop()V

    .line 1310
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1311
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 1314
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->resumeBackgroundMusic()V

    .line 1316
    :cond_23
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mShowAlertAfterVideo:Z

    if-eqz v0, :cond_30

    .line 1318
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1320
    :cond_30
    return-void
.end method

.method public unzipAndCopyAssetsTo()V
    .registers 10

    .prologue
    .line 447
    const/4 v0, 0x1

    .line 449
    .local v0, "bNeedCopy":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/artres"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "resourceDirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v2, "resourceDir":Ljava/io/File;
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/version.meta"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, "resourceVersionFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v4, "resourceVersionFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 459
    const-string v6, "artres/version.meta"

    invoke-direct {p0, v6, v3}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->needToCopyNewRes(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_46} :catch_b2

    move-result v6

    if-nez v6, :cond_4a

    .line 460
    const/4 v0, 0x0

    .line 471
    .end local v4    # "resourceVersionFile":Ljava/io/File;
    .end local v5    # "resourceVersionFilePath":Ljava/lang/String;
    :cond_4a
    :goto_4a
    if-eqz v0, :cond_ad

    .line 475
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 476
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->RemoveDir(Ljava/lang/String;)V

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAppPrivateDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v7

    sget v8, Lcom/ledo/fantasy/game/R$string;->gameso_private_path:I

    invoke-virtual {v7, v8}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->RemoveDir(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 482
    :cond_7e
    const/4 v6, 0x0

    :try_start_7f
    invoke-static {v6}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyStep(I)V

    .line 483
    const-string v6, "darkatdawn.project"

    const-string v7, "artres"

    invoke-direct {p0, v6, v7, v3}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/16 v6, 0x21

    invoke-static {v6}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyStep(I)V

    .line 485
    const-string v6, "engine.xml"

    const-string v7, "artres"

    invoke-direct {p0, v6, v7, v3}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/16 v6, 0x42

    invoke-static {v6}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyStep(I)V

    .line 487
    const-string v6, "lordlog.cfg"

    const-string v7, "artres"

    invoke-direct {p0, v6, v7, v3}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/16 v6, 0x64

    invoke-static {v6}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyStep(I)V

    .line 489
    const-string v6, "version.meta"

    const-string v7, "artres"

    invoke-direct {p0, v6, v7, v3}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_ad} :catch_b7

    .line 497
    :cond_ad
    :goto_ad
    return-void

    .line 464
    :cond_ae
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_4a

    .line 466
    :catch_b2
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ad

    .line 490
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b7
    move-exception v1

    .line 492
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ad
.end method
