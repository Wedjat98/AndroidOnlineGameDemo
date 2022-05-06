.class final Lcom/appsflyer/q$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private ˏ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic ॱ:Lcom/appsflyer/q;


# direct methods
.method public constructor <init>(Lcom/appsflyer/q;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/appsflyer/q$b;->ॱ:Lcom/appsflyer/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/appsflyer/q$b;->ˏ:Ljava/lang/ref/WeakReference;

    .line 170
    return-void
.end method

.method private varargs ॱ()Ljava/lang/Void;
    .registers 3

    .prologue
    .line 174
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_2c

    .line 178
    :goto_5
    iget-object v0, p0, Lcom/appsflyer/q$b;->ॱ:Lcom/appsflyer/q;

    invoke-static {v0}, Lcom/appsflyer/q;->ˊ(Lcom/appsflyer/q;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/appsflyer/q$b;->ॱ:Lcom/appsflyer/q;

    invoke-static {v0}, Lcom/appsflyer/q;->ˏ(Lcom/appsflyer/q;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 179
    iget-object v0, p0, Lcom/appsflyer/q$b;->ॱ:Lcom/appsflyer/q;

    invoke-static {v0}, Lcom/appsflyer/q;->ˎ(Lcom/appsflyer/q;)Z

    .line 181
    :try_start_1a
    iget-object v0, p0, Lcom/appsflyer/q$b;->ॱ:Lcom/appsflyer/q;

    invoke-static {v0}, Lcom/appsflyer/q;->ॱ(Lcom/appsflyer/q;)Lcom/appsflyer/q$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/q$b;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Lcom/appsflyer/q$c;->ˋ(Ljava/lang/ref/WeakReference;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_33

    .line 187
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/appsflyer/q$b;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 175
    :catch_2c
    move-exception v0

    .line 176
    const-string v1, "Sleeping attempt failed (essential for background state verification)\n"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 182
    :catch_33
    move-exception v0

    .line 183
    const-string v1, "Listener threw exception! "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_25
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/appsflyer/q$b;->ॱ()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
