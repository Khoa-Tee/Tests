*** Settings ***

Library    SeleniumLibrary
Library    String
Library    OperatingSystem

*** Variables ***

${url}      https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html
${browser}      chrome

*** Test Cases ***
This is a test case for navigation, authentication and check the article content
    [Documentation]  Automation testing
    [Tags]  Functional
    Set Selenium Implicit Wait    20s
    Set Selenium Timeout    20s
# Requirement 1 (Test navigation)
    Given I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully
    When I try to go to a new page
    Then I shall be able to go to a new page successfully
    And I try to go back to the previous page
    Then I shall be able to go back the previous pages successfully
    And I try to go forward to the next page
    Then I shall be able to go to the next page successfully
    Close Browser
# Requirement 2 (Check the article content)
    Given I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully to verify the article content
    When I verify the title details of the article
    Then I will make sure that the title details of the article is displayed correctly
    And I verify the description of the article
    Then I will make sure that the description of the article is displayed correctly
    And I verify the CSS of all content of the article
    Then I will make sure that all content of the article is displayed correctly
    And I verify the first paragraph
    Then I will make sure that the first paragraph is displayed correctly
    And I verify the second paragraph
    Then I will make sure that the second paragraph is displayed correctly
    And I verify the third paragraph
    Then I will make sure that the third paragraph is displayed correctly
    And I verify the first picture
    Then I will make sure that the first picture is displayed correctly
    Then I verify the fourth paragraph
    And I will make sure that the fourth paragraph is displayed correctly
    Then I verify the fifth paragraph
    And I will make sure that the fifth paragraph is displayed correctly
    And I verify the second picture
    Then I will make sure that the second picture is displayed correctly
    Then I verify the sixth paragraph
    And I will make sure that the sixth paragraph is displayed correctly
    Then I verify the seventh paragraph
    And I will make sure that the seventh paragraph is displayed correctly
    Then I verify the eighth paragraph
    And I will make sure that the eighth paragraph is displayed correctly
    Then I verify the video in the article
    And I will make sure that the video in the article is worked correctly
    Then I verify the nineth paragraph
    And I will make sure that the nineth paragraph is displayed correctly
    Then I verify the tenth paragraph
    And I will make sure that the tenth paragraph is displayed correctly
    Then I verify the eleventh paragraph
    And I will make sure that the eleventh paragraph is displayed correctly
    Then I verify the author name
    And I will make sure that the author name is displayed correctly
    Close Browser
*** Keywords ***
I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${titleOfCurrentPage}    Get Title
    Log To Console    \n"Title of current page is: ${titleOfCurrentPage} "
    Title Should Be    Trồng tre dụ cò về làm tổ - VnExpress
    Should Be Equal    Trồng tre dụ cò về làm tổ - VnExpress   ${titleOfCurrentPage}
    Wait Until Element Is Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Element Should Be Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Element Text Should Be    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]        Trồng tre dụ cò về làm tổ
I try to go to a new page
    Wait Until Element Is Visible    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Wait Until Element Is Enabled    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Element Should Be Visible    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Element Should Be Enabled    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Element Text Should Be    xpath:(//a[contains(@title, 'Kinh doanh')])[2]    Kinh doanh
    Click Element    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
I shall be able to go to a new page successfully
    ${titleOfNewPage}    Get Title
    Log To Console    \n"Title of a new page is: ${titleOfNewPage} "
    Title Should Be    Tin kinh doanh: Thị trường, tài chính, kinh tế, doanh nghiệp - VnExpress Kinh Doanh
    Should Be Equal    Tin kinh doanh: Thị trường, tài chính, kinh tế, doanh nghiệp - VnExpress Kinh Doanh   ${titleOfNewPage}
    Wait Until Element Is Not Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]     # Confirm that user has been navigated to a new page successfully
    Element Should Not Be Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Wait Until Element Is Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Should Be Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Text Should Be    xpath:(//a[contains(@title, 'Ebank')])[3]     Ebank
I try to go back to the previous page
    Go Back
I shall be able to go back the previous pages successfully
    ${titleOfPreviousPage}    Get Title
    Log To Console    \n"Title of the previous page is: ${titleOfPreviousPage} "
    Title Should Be    Trồng tre dụ cò về làm tổ - VnExpress
    Should Be Equal    Trồng tre dụ cò về làm tổ - VnExpress   ${titleOfPreviousPage}
    Wait Until Element Is Not Visible    xpath:(//a[contains(@title, 'Ebank')])[3]      # Confirm that user has been navigated back to the previous page successfully
    Element Should Not Be Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Wait Until Element Is Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Element Should Be Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Element Text Should Be    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]        Trồng tre dụ cò về làm tổ
I try to go forward to the next page
    Execute Javascript    history.forward()
I shall be able to go to the next page successfully
    ${titleOfNextPage}    Get Title
    Log To Console    \n"Title of the next page is: ${titleOfNextPage} "
    Title Should Be    Tin kinh doanh: Thị trường, tài chính, kinh tế, doanh nghiệp - VnExpress Kinh Doanh
    Should Be Equal    Tin kinh doanh: Thị trường, tài chính, kinh tế, doanh nghiệp - VnExpress Kinh Doanh   ${titleOfNextPage}
    Wait Until Element Is Not Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]     # Confirm that user has been navigated to the next page successfully
    Element Should Not Be Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Wait Until Element Is Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Should Be Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Text Should Be    xpath:(//a[contains(@title, 'Ebank')])[3]     Ebank
I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully to verify the article content
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${titleOfCurrentPage}    Get Title
    Log To Console    \n"Title of current page is: ${titleOfCurrentPage} "
    Title Should Be    Trồng tre dụ cò về làm tổ - VnExpress
    Should Be Equal    Trồng tre dụ cò về làm tổ - VnExpress   ${titleOfCurrentPage}
I verify the title details of the article
    Wait Until Element Is Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Element Should Be Visible    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]
    Element Text Should Be    xpath://h1[contains(text(), 'Trồng tre dụ cò về làm tổ ')]        Trồng tre dụ cò về làm tổ
I will make sure that the title details of the article is displayed correctly
    ${titleDetailsFontSize}=    Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('font-size');
    Should Be Equal    32px     ${titleDetailsFontSize}
    ${titleDetailsFontFamily}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('font-family');
    Should Be Equal    Merriweather, serif     ${titleDetailsFontFamily}
    ${titleDetailsFontWeight}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('font-weight');
    Should Be Equal    700     ${titleDetailsFontWeight}
    ${titleDetailsLineHeight}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('line-height');
    Should Be Equal    48px     ${titleDetailsLineHeight}
    ${titleDetailsMarginBottom}=    Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('margin-bottom');
    Should Be Equal    15px     ${titleDetailsMarginBottom}
I verify the description of the article
    Wait Until Element Is Visible    xpath://span[contains(text(), 'Thanh Hóa')]
    Element Should Be Visible    xpath://span[contains(text(), 'Thanh Hóa')]
    Element Text Should Be    xpath://span[contains(text(), 'Thanh Hóa')]       THANH HÓA
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'description')])[1]
    Element Should Be Visible    xpath:(//p[contains(@class, 'description')])[1]
    Element Should Contain    xpath:(//p[contains(@class, 'description')])[1]       Thương đàn chim trời bị săn bắt, ông Mai Văn Quân thầu khu đầm hoang, thuê người trồng rừng làm nơi trú ngụ cho chúng.
I will make sure that the description of the article is displayed correctly
    ${locationStampColor}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.location-stamp'))).getPropertyValue('color');
    Should Be Equal     rgb(117, 117, 117)     ${locationStampColor}
    ${locationStampTextTransform}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.location-stamp')),'::before').getPropertyValue('text-transform');
    Should Be Equal    uppercase     ${locationStampTextTransform}
    ${descriptionFontSize}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .description'))).getPropertyValue('font-size');
    Should Be Equal    18px     ${descriptionFontSize}
    ${descriptionFontWeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .description'))).getPropertyValue('font-weight');
    Should Be Equal    400     ${descriptionFontWeight}
    ${titleDetailsLineHeight}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .description'))).getPropertyValue('line-height');
    Should Be Equal    28.8px     ${titleDetailsLineHeight}
I verify the CSS of all content of the article
    Wait Until Element Is Visible    xpath://article[contains(@class, 'fck_detail')]
    Element Should Be Visible    xpath://article[contains(@class, 'fck_detail')]
I will make sure that all content of the article is displayed correctly
    ${articleTextColor}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('color');
    Should Be Equal     rgb(34, 34, 34)     ${articleTextColor}
    ${articleTextWidth}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('width');
    Should Be Equal     670px     ${articleTextWidth}
    ${articleTextLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${articleTextLineHeight}
    ${articleTextFont}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('font');
    Should Be Equal     18px / 28.8px arial     ${articleTextFont}
    ${articleTextPosition}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('position');
    Should Be Equal     relative     ${articleTextPosition}
I verify the first paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[1]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[1]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[1]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[1]        Nhá nhem tối mỗi ngày, ông Quân, 60 tuổi, lại dạo quanh khu vườn của gia đình ở xã Hà Ngọc, huyện Hà Trung, để thăm đàn cò đang chao nghiêng trên những bụi tre. Thói quen này được ông duy trì hơn 10 năm qua. "Tôi coi đàn chim trời như bạn. Ngày nào không nhìn thấy chúng bay lượn, không được nghe tiếng ríu rít là thấy thiếu vắng, ăn không ngon miệng...", ông Quân tâm sự.
I will make sure that the first paragraph is displayed correctly
    ${firstParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${firstParagraphLineHeight}
    ${firstParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${firstParagraphTextRendering}
I verify the second paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[2]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[2]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[2]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[2]    Từ nhỏ, ông Quân đã rất yêu thích các loài chim. Nhiều lần chứng kiến đàn chim hoang dã bị thợ săn giăng lưới hoặc bắn hạ mang đi bán thịt, ông bảo "rất xót xa, cần có hành động". Trong một lần về Hà Ngọc, thấy giữa cánh đồng hoang vu có nhiều loài cò bợ thường bay về trú ngụ, ông nảy sinh ý định biến nơi đây thành ngôi nhà cho lũ chim hoang đến ở.
I will make sure that the second paragraph is displayed correctly
    ${secondParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${secondParagraphLineHeight}
    ${secondParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${secondParagraphTextRendering}
I verify the first picture
    Scroll Element Into View    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]
    Wait Until Element Is Visible    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]
    Wait Until Element Is Enabled    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]
    Element Should Be Visible    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]
    Element Should Be Enabled    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]
    Click Element    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]
    Wait Until Element Is Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=0UzU_3uE2O2K6aFwSy_yAg')]
    Element Should Be Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=0UzU_3uE2O2K6aFwSy_yAg')]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Image')])[4]
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     Cò đậu trên rặng tre mỗi buổi tối mùa đông. Ảnh:${SPACE}
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     Lê Hoàng
    Wait Until Element Is Visible    xpath://span[contains(@class, 'close-zoom')]
    Wait Until Element Is Enabled    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Visible    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Enabled    xpath://span[contains(@class, 'close-zoom')]
    Click Element    xpath://span[contains(@class, 'close-zoom')]
I will make sure that the first picture is displayed correctly
    ${firstPictureAlt}=     Get Element Attribute    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]      alt
    Should Be Equal    Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng   ${firstPictureAlt}
    ${firstPictureSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]      src
    Should Be Equal    https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${firstPictureSrc}
    ${firstPictureDataSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]      data-src
    Should Be Equal    https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${firstPictureDataSrc}
I verify the third paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[3]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[3]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[3]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[3]        Năm 2004, gia đình ông Quân nhận thầu khu đầm lầy 8 ha tại xã Hà Ngọc. Lúc đó cả vùng như bãi đất chết, chỉ có lau sậy mọc hoang, ít dấu chân người qua lại. Ông thuê người trồng 50 bụi tre, đào đất đắp đường, xây tường rào bao quanh nhằm bảo vệ đàn cò thoát nạn săn bắn.
I will make sure that the third paragraph is displayed correctly
    ${thirdParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${thirdParagraphLineHeight}
    ${thirdParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${thirdParagraphTextRendering}
I verify the fourth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[4]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[4]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[4]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[4]    Tre mọc đến đâu, cò về trú ẩn đến đó. Đến năm 2014, được chính quyền giao thêm hơn 10 ha đất ở khu lân cận, ông Quân quy hoạch thành vùng chăn nuôi và trồng cây ăn quả, phần còn lại trồng tre, luồng cho cò trú ngụ.
I will make sure that the fourth paragraph is displayed correctly
    ${fourthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${fourthParagraphLineHeight}
    ${fourthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${fourthParagraphTextRendering}
I verify the fifth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[5]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[5]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[5]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[5]        "Nhiều người bảo tôi khùng, nhưng tôi cứ làm với tất cả đam mê...", ông chủ vườn cò chia sẻ. Hiện số lượng cò làm tổ, sinh nở trong khu vườn của gia đình ông Quân lên tới hàng chục nghìn con. Ngoài các loài cò lửa, cò nhện còn có bồ nông, sáo sậu, bìm bịp...
I will make sure that the fifth paragraph is displayed correctly
    ${fifthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${fifthParagraphLineHeight}
    ${fifthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${fifthParagraphTextRendering}
I verify the second picture
    Scroll Element Into View    xpath://img[contains(@alt, 'Ông Mai Văn Quân. Ảnh: Lê Hoàng')]
    Wait Until Element Is Visible    xpath://img[contains(@alt, 'Ông Mai Văn Quân. Ảnh: Lê Hoàng')]
    Wait Until Element Is Enabled    xpath://img[contains(@alt, 'Ông Mai Văn Quân. Ảnh: Lê Hoàng')]
    Element Should Be Visible    xpath://img[contains(@alt, 'Ông Mai Văn Quân. Ảnh: Lê Hoàng')]
    Element Should Be Enabled    xpath://img[contains(@alt, 'Ông Mai Văn Quân. Ảnh: Lê Hoàng')]
    Click Element    xpath://img[contains(@alt, 'Ông Mai Văn Quân. Ảnh: Lê Hoàng')]
    Wait Until Element Is Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/5-2599-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=uZG2aRLpGD1I2HVGv61XwQ')]
    Element Should Be Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/5-2599-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=uZG2aRLpGD1I2HVGv61XwQ')]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Image')])[4]
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     Ông Mai Văn Quân. Ảnh:
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     ${SPACE}Lê Hoàng
    Wait Until Element Is Visible    xpath://span[contains(@class, 'close-zoom')]
    Wait Until Element Is Enabled    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Visible    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Enabled    xpath://span[contains(@class, 'close-zoom')]
    Click Element    xpath://span[contains(@class, 'close-zoom')]
I will make sure that the second picture is displayed correctly
    ${secondPictureAlt}=     Get Element Attribute    xpath://img[contains(@alt, 'Ông Mai Văn Quân. Ảnh: Lê Hoàng')]      alt
    Should Be Equal    Ông Mai Văn Quân. Ảnh: Lê Hoàng   ${secondPictureAlt}
    ${secondPictureSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]      src
    Should Be Equal     https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${secondPictureSrc}
    ${secondPictureDataSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'Cò đậu chi chít trên rặng tre mỗi buổi tối mùa đông. Ảnh: Lê Hoàng')]      data-src
    Should Be Equal    https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${secondPictureDataSrc}
I verify the sixth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[6]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[6]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[6]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[6]    "Mừng là mỗi năm cò về càng nhiều, chứng tỏ đất lành chim đậu. Mỗi lần vào ngắm đồi cò, tôi cảm thấy sức khỏe tốt hơn lên và cảm nhận rõ hơn sự nhỏ bé của mình trước thiên nhiên...", ông Quân chia sẻ.
I will make sure that the sixth paragraph is displayed correctly
    ${sixthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${sixthParagraphLineHeight}
    ${sixthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${sixthParagraphTextRendering}
I verify the seventh paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[7]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[7]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[7]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[7]    Từ khi gần gũi với vườn cò, ông Quân yêu cầu gia đình không mua hay sử dụng thịt chim trời. Có lần vài người bạn mời ăn thịt chim đặc sản, ông khước từ giận dữ vì "tưởng tượng như lũ chim ở nhà bị bắn chết khi bay xa kiếm ăn...".
I will make sure that the seventh paragraph is displayed correctly
    ${seventhParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${seventhParagraphLineHeight}
    ${seventhParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${seventhParagraphTextRendering}
I verify the eighth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[8]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[8]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[8]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[8]    Để bảo vệ đàn chim, ông Quân còn thuê nhiều nhân công vừa chăm sóc cây trồng vừa canh chừng không cho người lạ săn bắn. Bà Bùi Thị Thắm, công nhân trong trang trại, cho hay hàng ngày đi kiểm tra xem chim cò bị thương hay không. Con nào bị dính bẫy lưới thì gỡ, những con bị bệnh chết thì đem chôn, rảnh thì bà dùng dao phát quang cây bụi cho chim lấy chỗ làm tổ, sinh nở.
I will make sure that the eighth paragraph is displayed correctly
    ${eighthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${eighthParagraphLineHeight}
    ${eighthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${eighthParagraphTextRendering}
I verify the video in the article
    Scroll Element Into View    xpath:(//p[contains(@class, 'Image')])[3]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Image')])[3]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Image')])[3]
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[3]     Đàn cò bay lượn trên khu rừng của ông Quân. Video: Lê Hoàng
    Wait Until Element Is Visible    xpath://button[contains(@class, 'vjs-big-play-button')]
    Wait Until Element Is Enabled    xpath://button[contains(@class, 'vjs-big-play-button')]
    Element Should Be Visible    xpath://button[contains(@class, 'vjs-big-play-button')]
    Element Should Be Enabled    xpath://button[contains(@class, 'vjs-big-play-button')]
I will make sure that the video in the article is worked correctly
    Click Element    xpath://button[contains(@class, 'vjs-big-play-button')]
    Wait Until Element Is Visible    xpath://span[contains(text(), '0:50')]
    Element Should Be Visible    xpath://span[contains(text(), '0:50')]
    Element Text Should Be    xpath://span[contains(text(), '0:50')]    0:50
    Sleep    5s
    Click Element    xpath://button[contains(@class, 'vjs-big-play-button')]
#    Wait Until Element Is Visible    xpath://button[contains(@title, 'Bỏ tắt tiếng')]
#    Wait Until Element Is Enabled    xpath://button[contains(@title, 'Bỏ tắt tiếng')]
#    Element Should Be Visible    xpath://button[contains(@title, 'Bỏ tắt tiếng')]
#    Element Should Be Enabled    xpath://button[contains(@title, 'Bỏ tắt tiếng')]
#    Click Element    xpath://button[contains(@title, 'Bỏ tắt tiếng')]
#    Wait Until Element Is Visible    xpath://button[contains(@title, 'Tắt tiếng')]
#    Wait Until Element Is Enabled    xpath://button[contains(@title, 'Tắt tiếng')]
#    Element Should Be Visible    xpath://button[contains(@title, 'Tắt tiếng')]
#    Element Should Be Enabled    xpath://button[contains(@title, 'Tắt tiếng')]
#    Click Element    xpath://button[contains(@title, 'Tắt tiếng')]
I verify the nineth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[9]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[9]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[9]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[9]    Vợ ông Quân, bà Vi Thị Mai Lam, cho biết gia đình ủng hộ việc chồng dành đất trồng cây, đắp bờ cho chim trời về trú ngụ. "Ông ấy dành cả tâm huyết cho đảo cò, có khi bận rộn chăm cò còn hơn việc nhà...", bà Lam nói.
I will make sure that the nineth paragraph is displayed correctly
    ${ninethParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${ninethParagraphLineHeight}
    ${ninethParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${ninethParagraphTextRendering}
I verify the tenth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[10]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[10]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[10]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[10]       Nói về dự định tương lai, ông Quân cho hay sẽ tiếp tục bảo vệ đàn cò và định hướng phát triển nơi đây thành khu du lịch sinh thái gần gũi với thiên nhiên, giúp nâng cao ý thức bảo vệ môi trường trong cộng đồng.
I will make sure that the tenth paragraph is displayed correctly
    ${tenthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${tenthParagraphLineHeight}
    ${tenthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${tenthParagraphTextRendering}
I verify the eleventh paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[11]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[11]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[11]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[11]       Đánh giá cao mô hình trang trại và hành động bảo vệ các loài chim hoang dã của ông Quân, ông Nguyễn Minh Tấn, Chủ tịch xã Hà Ngọc, cho biết đây là vườn cò duy nhất ở huyện Hà Trung nên rất cần được bảo tồn và nhân rộng. Chính quyền đang xem xét, tạo điều kiện để thành lập khu du lịch sinh thái ở nơi này nhằm phát huy hơn nữa giá trị của vùng đất.
I will make sure that the eleventh paragraph is displayed correctly
    ${eleventhParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${eleventhParagraphLineHeight}
    ${eleventhParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${eleventhParagraphTextRendering}
I verify the author name
    Scroll Element Into View    xpath://p[contains(@class, 'author_mail')]
    Wait Until Element Is Visible    xpath://p[contains(@class, 'author_mail')]
    Element Should Be Visible    xpath://p[contains(@class, 'author_mail')]
    Element Text Should Be    xpath://p[contains(@class, 'author_mail')]    Lê Hoàng
I will make sure that the author name is displayed correctly
    ${authorNameFontSize}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .author, .page-detail .author_mail'))).getPropertyValue('font-size');
    Should Be Equal     18px     ${authorNameFontSize}
    ${authorNameTextAlign}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .author, .page-detail .author_mail'))).getPropertyValue('text-align');
    Should Be Equal     right     ${authorNameTextAlign}

# Notes: Because I do not have enough time to organzie the best test case structure so that in this code demo I just show the whole code in only one file.
# The best solution is split the Variables in another folder and import to this file.
# On the other hand, all xpaths should be stored as variables and store it into another folder then import to this file.
# I am on a holiday so that I can not spend more time for this code demo. I have to coincide with the tour guide management. Sorry for this inconvenience.
# I think I can show more in details if I have a chance to present my knowledge to interviewer.

