.class Lcom/facebook/login/LoginManager$2;
.super Ljava/util/HashSet;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->getOtherPublishPermissions()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 460
    const-string v0, "ads_management"

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager$2;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v0, "create_event"

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager$2;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v0, "rsvp_event"

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager$2;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
