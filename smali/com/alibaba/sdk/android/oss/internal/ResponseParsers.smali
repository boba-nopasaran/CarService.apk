.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.super Ljava/lang/Object;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;
    }
.end annotation


# static fields
.field public static final domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseCopyObjectResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseObjectListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseInitMultipartResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseCompleteMultipartUploadResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseListPartsResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    move-result-object v0

    return-object v0
.end method

.method public static checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseCommonPrefixXML(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "Prefix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method private static parseCompleteMultipartUploadResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v7, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[item] - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "Location"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setLocation(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v7, "Bucket"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v7, "Key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v7, "ETag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setETag(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method private static parseCopyObjectResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v7, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[item] - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "LastModified"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->setLastModified(Ljava/util/Date;)V

    goto :goto_1

    :cond_2
    const-string v7, "ETag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->setEtag(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private static parseGetBucketACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/text/ParseException;
        }
    .end annotation

    sget-object v17, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[parseGetBucketACLResponse - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_8

    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v17, "Owner"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    invoke-interface {v15, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    const-string v17, "ID"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketOwnerID(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v17, "DisplayName"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketOwner(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v17, "AccessControlList"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    invoke-interface {v3, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    const-string v17, "Grant"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketACL(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method private static parseInitMultipartResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    sget-object v7, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[item] - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "UploadId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setUploadId(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v7, "Bucket"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v7, "Key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private static parseListPartsResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/text/ParseException;
        }
    .end annotation

    sget-object v24, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[parseObjectListResponse] - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_10

    invoke-interface {v11, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v24, "Bucket"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v24, "Key"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v24, "UploadId"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setUploadId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v24, "PartNumberMarker"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setPartNumberMarker(I)V

    goto :goto_1

    :cond_5
    const-string v24, "NextPartNumberMarker"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setNextPartNumberMarker(I)V

    goto/16 :goto_1

    :cond_6
    const-string v24, "MaxParts"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setMaxParts(I)V

    goto/16 :goto_1

    :cond_7
    const-string v24, "IsTruncated"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setTruncated(Z)V

    goto/16 :goto_1

    :cond_8
    const-string v24, "StorageClass"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v24, "Part"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    new-instance v21, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/PartSummary;-><init>()V

    const/4 v10, 0x0

    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_f

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_b

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_b
    const-string v24, "PartNumber"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setPartNumber(I)V

    goto :goto_3

    :cond_c
    const-string v24, "LastModified"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setLastModified(Ljava/util/Date;)V

    goto :goto_3

    :cond_d
    const-string v24, "ETag"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setETag(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const-string v24, "Size"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_a

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setSize(J)V

    goto :goto_3

    :cond_f
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setParts(Ljava/util/List;)V

    return-object p1
.end method

.method private static parseObjectListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/text/ParseException;
        }
    .end annotation

    sget-object v10, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[parseObjectListResponse] - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->clearCommonPrefixes()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->clearObjectSummaries()V

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v3, v10, :cond_b

    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "Name"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v10, "Prefix"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setPrefix(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v10, "Marker"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setMarker(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v10, "Delimiter"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setDelimiter(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v10, "EncodingType"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setEncodingType(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v10, "MaxKeys"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setMaxKeys(I)V

    goto :goto_1

    :cond_7
    const-string v10, "NextMarker"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setNextMarker(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v10, "IsTruncated"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setTruncated(Z)V

    goto/16 :goto_1

    :cond_9
    const-string v10, "Contents"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseObjectSummaryXML(Lorg/w3c/dom/NodeList;)Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->addObjectSummary(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)V

    goto/16 :goto_1

    :cond_a
    const-string v10, "CommonPrefixes"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseCommonPrefixXML(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p1, v9}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->addCommonPrefix(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    return-object p1
.end method

.method public static parseObjectMetadata(Ljava/util/Map;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v3, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "x-oss-meta-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    :try_start_1
    const-string v6, "Last-Modified"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Date"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :try_start_2
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_3
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    const-string v6, "Content-Length"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v6, "ETag"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_5
    return-object v3
.end method

.method private static parseObjectSummaryXML(Lorg/w3c/dom/NodeList;)Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_7

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "Key"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "LastModified"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setLastModified(Ljava/util/Date;)V

    goto :goto_1

    :cond_3
    const-string v5, "Size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setSize(J)V

    goto :goto_1

    :cond_4
    const-string v5, "ETag"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setETag(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, "Type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setType(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v5, "StorageClass"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setStorageClass(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-object v3
.end method

.method public static parseResponseErrorXML(Lokhttp3/Response;Z)Lcom/alibaba/sdk/android/oss/ServiceException;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lokhttp3/Response;->code()I

    move-result v2

    const-string v1, "x-oss-request-id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_5

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->domFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    new-instance v13, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v8, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v12, v1, :cond_5

    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Code"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v1, "Message"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v1, "RequestId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v1, "HostId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->checkChildNotNullAndGetValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    :cond_5
    :goto_2
    new-instance v1, Lcom/alibaba/sdk/android/oss/ServiceException;

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/oss/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2
.end method

.method public static trimQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
