.class public Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;
.super Ljava/lang/Object;
.source "IcefireHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/game/IcefireHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogMessage"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public titile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;->message:Ljava/lang/String;

    .line 147
    return-void
.end method
