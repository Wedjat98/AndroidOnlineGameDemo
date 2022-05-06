.class public Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;
.super Ljava/lang/Object;
.source "IcefireHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/game/IcefireHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditBoxMessage"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public inputFlag:I

.field public inputMode:I

.field public maxLength:I

.field public returnType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "inputMode"    # I
    .param p4, "inputFlag"    # I
    .param p5, "returnType"    # I
    .param p6, "maxLength"    # I

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 161
    iput p3, p0, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->inputMode:I

    .line 162
    iput p4, p0, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->inputFlag:I

    .line 163
    iput p5, p0, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->returnType:I

    .line 164
    iput p6, p0, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->maxLength:I

    .line 165
    return-void
.end method
