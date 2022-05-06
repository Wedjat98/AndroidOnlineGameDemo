.class public Lcom/ledo/fantasy/update/ChipsetUnit;
.super Ljava/lang/Object;
.source "ChipsetUnit.java"


# instance fields
.field public filename:Ljava/lang/String;

.field public restypearray:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/ledo/fantasy/update/ChipsetUnit;->type:I

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/ledo/fantasy/update/ChipsetUnit;->filename:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ledo/fantasy/update/ChipsetUnit;->restypearray:Ljava/util/Vector;

    .line 5
    return-void
.end method
