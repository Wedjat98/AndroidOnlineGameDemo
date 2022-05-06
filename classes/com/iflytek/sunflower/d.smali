.class public Lcom/iflytek/sunflower/d;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/iflytek/sunflower/d;->a:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)J
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0

    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iflytek_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7

    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const-class v1, Lcom/iflytek/sunflower/d;

    monitor-enter v1

    if-eqz p1, :cond_d

    :try_start_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3a

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit v1

    return-void

    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3f

    :goto_15
    const/4 v0, 0x0

    if-eq v0, p3, :cond_3d

    :goto_18
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string v0, "Collector"

    const-string v2, "write to file success"

    invoke-static {v0, v2}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_30} :catch_31
    .catchall {:try_start_f .. :try_end_30} :catchall_3a

    goto :goto_d

    :catch_31
    move-exception v0

    :try_start_32
    const-string v0, "Collector"

    const-string v2, "write to file error."

    invoke-static {v0, v2}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    goto :goto_d

    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3d
    move p3, v0

    goto :goto_18

    :cond_3f
    move-object p2, v0

    goto :goto_15
.end method

.method private static a(Ljava/io/File;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-string v2, "Collector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-wide v2, Lcom/iflytek/sunflower/d;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iflytek_online_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iflytek_cached_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iflytek_log_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 9

    const/4 v0, 0x0

    const-class v2, Lcom/iflytek/sunflower/d;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_73

    move-result-object v1

    :try_start_8
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iflytek/sunflower/d;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v1, "Collector"

    const-string v3, "delete local file which beyond 2MB"

    invoke-static {v1, v3}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_21} :catch_4d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_21} :catch_68
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_21} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_21} :catch_82
    .catchall {:try_start_8 .. :try_end_21} :catchall_73

    :cond_21
    :goto_21
    monitor-exit v2

    return-object v0

    :cond_23
    :try_start_23
    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_4d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_68
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_26} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_82
    .catchall {:try_start_23 .. :try_end_26} :catchall_73

    move-result-object v3

    :try_start_27
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    new-array v4, v4, [C

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    :goto_35
    const/4 v6, -0x1

    invoke-virtual {v1, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    if-eq v6, v7, :cond_4f

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/StringWriter;->write([CII)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_40} :catch_41
    .catchall {:try_start_27 .. :try_end_40} :catchall_63

    goto :goto_35

    :catch_41
    move-exception v1

    :try_start_42
    const-string v4, "Collector"

    const-string v5, "read from local file error. "

    invoke-static {v4, v5, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_63

    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_68
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_4c} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_82
    .catchall {:try_start_49 .. :try_end_4c} :catchall_73

    goto :goto_21

    :catch_4d
    move-exception v1

    goto :goto_21

    :cond_4f
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_41
    .catchall {:try_start_4f .. :try_end_52} :catchall_63

    move-result-object v4

    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_21

    move-object v0, v1

    goto :goto_21

    :catchall_63
    move-exception v1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_68} :catch_4d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_68} :catch_68
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_68} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_68} :catch_82
    .catchall {:try_start_53 .. :try_end_68} :catchall_73

    :catch_68
    move-exception v1

    :try_start_69
    const-string v3, "Collector"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_21

    :catchall_73
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_76
    move-exception v1

    :try_start_77
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->g(Landroid/content/Context;)V

    const-string v3, "Collector"

    const-string v4, "local JSONObject error."

    invoke-static {v3, v4, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_73

    goto :goto_21

    :catch_82
    move-exception v1

    goto :goto_21
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const-class v2, Lcom/iflytek/sunflower/d;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_68

    move-result-object v1

    :try_start_8
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iflytek/sunflower/d;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v1, "Collector"

    const-string v3, "delete local file which beyond 2MB"

    invoke-static {v1, v3}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_21} :catch_4d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_21} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_6b
    .catchall {:try_start_8 .. :try_end_21} :catchall_68

    :goto_21
    monitor-exit v2

    return-object v0

    :cond_23
    :try_start_23
    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_4d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_6b
    .catchall {:try_start_23 .. :try_end_26} :catchall_68

    move-result-object v3

    :try_start_27
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    new-array v4, v4, [C

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    :goto_35
    const/4 v6, -0x1

    invoke-virtual {v1, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    if-eq v6, v7, :cond_4f

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/StringWriter;->write([CII)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_40} :catch_41
    .catchall {:try_start_27 .. :try_end_40} :catchall_58

    goto :goto_35

    :catch_41
    move-exception v1

    :try_start_42
    const-string v4, "Collector"

    const-string v5, "read from local file error. "

    invoke-static {v4, v5, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_58

    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_6b
    .catchall {:try_start_49 .. :try_end_4c} :catchall_68

    goto :goto_21

    :catch_4d
    move-exception v1

    goto :goto_21

    :cond_4f
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_41
    .catchall {:try_start_4f .. :try_end_52} :catchall_58

    move-result-object v1

    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v0, v1

    goto :goto_21

    :catchall_58
    move-exception v1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_5d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5d} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_6b
    .catchall {:try_start_53 .. :try_end_5d} :catchall_68

    :catch_5d
    move-exception v1

    :try_start_5e
    const-string v3, "Collector"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_68

    goto :goto_21

    :catchall_68
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_6b
    move-exception v1

    goto :goto_21
.end method

.method public static g(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/iflytek/sunflower/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method
