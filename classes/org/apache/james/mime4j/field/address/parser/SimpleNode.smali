.class public Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
.super Lorg/apache/james/mime4j/field/address/parser/BaseNode;
.source "SimpleNode.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/Node;


# instance fields
.field protected children:[Lorg/apache/james/mime4j/field/address/parser/Node;

.field protected id:I

.field protected parent:Lorg/apache/james/mime4j/field/address/parser/Node;

.field protected parser:Lorg/apache/james/mime4j/field/address/parser/AddressListParser;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/BaseNode;-><init>()V

    .line 12
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->id:I

    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser;I)V
    .registers 3
    .param p1, "p"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    .param p2, "i"    # I

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(I)V

    .line 17
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->parser:Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    .line 18
    return-void
.end method


# virtual methods
.method public childrenAccept(Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "visitor"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    if-eqz v1, :cond_14

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 57
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtAccept(Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 60
    .end local v0    # "i":I
    :cond_14
    return-object p2
.end method

.method public dump(Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    if-eqz v2, :cond_34

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v2, v2

    if-ge v0, v2, :cond_34

    .line 79
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aget-object v1, v2, v0

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .line 80
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
    if-eqz v1, :cond_31

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V

    .line 78
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 85
    .end local v0    # "i":I
    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
    :cond_34
    return-void
.end method

.method public jjtAccept(Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "visitor"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-interface {p1, p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;->visit(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public jjtAddChild(Lorg/apache/james/mime4j/field/address/parser/Node;I)V
    .registers 7
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    if-nez v1, :cond_10

    .line 31
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/Node;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    .line 37
    :cond_b
    :goto_b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aput-object p1, v1, p2

    .line 38
    return-void

    .line 32
    :cond_10
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v1, v1

    if-lt p2, v1, :cond_b

    .line 33
    add-int/lit8 v1, p2, 0x1

    new-array v0, v1, [Lorg/apache/james/mime4j/field/address/parser/Node;

    .line 34
    .local v0, "c":[Lorg/apache/james/mime4j/field/address/parser/Node;
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_b
.end method

.method public jjtClose()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public jjtGetNumChildren()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v0, v0

    goto :goto_5
.end method

.method public jjtGetParent()Lorg/apache/james/mime4j/field/address/parser/Node;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->parent:Lorg/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public jjtSetParent(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 2
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;

    .prologue
    .line 26
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->parent:Lorg/apache/james/mime4j/field/address/parser/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
