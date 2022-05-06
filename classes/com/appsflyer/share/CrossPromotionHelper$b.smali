.class final Lcom/appsflyer/share/CrossPromotionHelper$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/share/CrossPromotionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private ˊ:Z

.field private ˏ:Lcom/appsflyer/share/d;

.field private ॱ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/appsflyer/share/d;Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ˏ:Lcom/appsflyer/share/d;

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ॱ:Ljava/lang/ref/WeakReference;

    .line 108
    iput-boolean p3, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ˊ:Z

    .line 109
    return-void
.end method

.method private varargs ˋ([Ljava/lang/String;)Ljava/lang/Void;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ˊ:Z

    if-eqz v0, :cond_6

    .line 145
    :cond_5
    :goto_5
    return-object v2

    .line 118
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    aget-object v1, p1, v0

    .line 119
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_b1
    .catchall {:try_start_7 .. :try_end_14} :catchall_ac

    .line 121
    const/16 v3, 0x2710

    :try_start_16
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 124
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_39

    .line 125
    const-string v3, "Cross promotion impressions success: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_33} :catch_74
    .catchall {:try_start_16 .. :try_end_33} :catchall_a3

    .line 140
    :cond_33
    :goto_33
    if-eqz v0, :cond_5

    .line 141
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 126
    :cond_39
    const/16 v4, 0x12d

    if-eq v3, v4, :cond_41

    const/16 v4, 0x12e

    if-ne v3, v4, :cond_86

    .line 128
    :cond_41
    :try_start_41
    const-string v3, "Cross promotion redirection success: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 129
    iget-object v1, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ˏ:Lcom/appsflyer/share/d;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ॱ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 130
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ˏ:Lcom/appsflyer/share/d;

    invoke-virtual {v3, v1}, Lcom/appsflyer/share/d;->ˎ(Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ˏ:Lcom/appsflyer/share/d;

    iget-object v1, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->ॱ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v3, v1}, Lcom/appsflyer/share/d;->ˏ(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_73} :catch_74
    .catchall {:try_start_41 .. :try_end_73} :catchall_a3

    goto :goto_33

    .line 137
    :catch_74
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 138
    :goto_78
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_ae

    .line 140
    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 135
    :cond_86
    :try_start_86
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "call to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_a2} :catch_74
    .catchall {:try_start_86 .. :try_end_a2} :catchall_a3

    goto :goto_33

    .line 140
    :catchall_a3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_a6
    if-eqz v2, :cond_ab

    .line 141
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ab
    throw v0

    .line 140
    :catchall_ac
    move-exception v0

    goto :goto_a6

    :catchall_ae
    move-exception v0

    move-object v2, v1

    goto :goto_a6

    .line 137
    :catch_b1
    move-exception v0

    move-object v1, v2

    goto :goto_78
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/appsflyer/share/CrossPromotionHelper$b;->ˋ([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
