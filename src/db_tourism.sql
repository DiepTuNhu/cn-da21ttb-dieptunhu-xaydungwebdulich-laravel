-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 26, 2024 lúc 09:21 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_tourism`
--
CREATE DATABASE IF NOT EXISTS `db_tourism` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_tourism`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `sender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `sender`, `email`, `content`, `time`, `status`, `id_user`, `created_at`, `updated_at`) VALUES
(2, 'nhu', 'nhudiep@gmail.com', 'fcfctf', '2024-12-26 09:21:18', 0, 4, '2024-12-26 02:21:18', '2024-12-26 02:21:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_type` int UNSIGNED NOT NULL,
  `id_province` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `name`, `address`, `price`, `description`, `status`, `id_type`, `id_province`, `created_at`, `updated_at`) VALUES
(1, 'Biển Ba Động', 'Xã Trường Long Hòa, thị xã Duyên Hải, tỉnh Trà Vinh', 'Miễn phí', '<p>Biển Ba Động là danh thắng và là khu du lịch nổi tiếng thuộc xã Trường Long Hòa (thị xã Duyên Hải, tỉnh Trà Vinh), cách trung tâm thành phố Trà Vinh 50 km về hướng đông nam và cách thị xã Duyên Hải 10 km về hướng đông. Khu du lịch này có vị trí nằm giữa hai cửa biển Cung Hầu (sông Tiền), Định An (sông Hậu), nhìn chính diện ra biển Đông.</p><p>Vùng biển Đông ven bờ các tỉnh Đồng bằng sông Cửu Long là vùng biển phù sa do nhiều cửa sông lớn nhỏ đổ ra nên phần lớn là bãi bùn, nước không trong. Trong đó, biển Ba Động là khu vực hiếm hoi ở miền Tây Nam bộ được thiên nhiên hào phóng ban tặng cho một bãi cát dài hơn 10 km từ ấp Nhà Mát tới ấp Cồn Trứng. Do độ dốc thoai thoải, khi nước thủy triều xuống, bãi cát phơi ra hàng trăm mét, từ bờ xuống tới mép nước.</p><p>Cũng do nằm trong khu vực biển phù sa nên bãi cát Ba Động không trắng muốt hay vàng óng ả, nước biển Ba Động cũng không thể trong xanh như với các bãi biển Nha Trang hay Vũng Tàu. Tuy nhiên, dọc bờ biển Đông, từ Gò Công tới Cà Mau, Ba Động có bãi cát đẹp, nước biển khá trong, nhất là vào những tháng sau Tết Nguyên đán, sóng yên biển lặng, hình thành khu du lịch biển được nhiều người ưa chuộng.</p><p>Dừng chân tại khu du lịch Biển Ba Động, du khách sẽ có dịp tìm hiểu bề dày lịch sử, chiều sâu văn hóa của vùng đất ven biển Trường Long Hòa, Duyên Hải, Trà Vinh. Gần 3 thế kỷ trước, những ngư dân vùng Bình Thuận vào định cư tại đây đã mở ra nghề đi biển tạo cơm ăn áo mặc và cũng chính họ đã mang theo địa danh Ba Động, tín ngưỡng thờ Bà Cố Hỷ cho vùng đất mới. Những năm tháng quân tướng chúa Nguyễn Ánh trốn chạy sự truy đuổi của nghĩa quân Tây Sơn vào cuối thế kỷ XVIII đã để lại các tên làng có từ tố “Long” như Trường Long Hòa, Long Vĩnh, Long Hữu, Long Toàn… và để lại luôn ngôi mộ Quận chúa như một bí ẩn lịch sử mấy trăm năm.</p>', 0, 3, 4, '2024-12-12 18:37:29', '2024-12-18 06:15:16'),
(2, 'Ao Bà Om', 'Phường 8, thành phố Trà Vinh, tỉnh Trà Vinh', '', '<p>Nhắc tới Trà Vinh, người ta nghĩ đến mảnh đất của những ngôi chùa Khmer cổ kính cùng những di tích lịch sử mang nhiều truyền thuyết huyền thoại, gắn liền với hành trình khai phá, gầy dựng phương Nam. Di tích ao Bà Om ngàn năm soi bóng cổ tự là một trong những niềm tự hào của người dân nơi đây.</p><p>Ao Bà Om, hay Ao Vuông nằm cạnh Quốc lộ 53, thuộc phường 8 thành phố Trà Vinh (trước đây là ấp Tà Cụ, xã Nguyệt Hóa, huyện Châu Thành), cách trung tâm thành phố Trà Vinh khoảng 5 km về phía Tây Nam.</p><p>Du lịch Trà Vinh đến đây, bạn không đơn thuần chỉ được chiêm ngưỡng vẻ đẹp thơ mộng của thiên nhiên mà còn được cảm nhận rõ nét hơn những giá trị văn hoá độc đáo của vùng đất Trà Vinh qua câu chuyện mang đậm màu sắc Khmer Nam Bộ…</p><p>Ấn tượng đầu tiên khi tới thăm ao Bà Om là cảm giác mát mẻ trước cảnh trời nước xanh biếc một màu. Ao có hình chữ nhật, rộng 300m, dài 500m (vì gần với hình vuông nên còn được gọi là Ao Vuông) khách sẽ bất ngờ vì ao lớn quá, phải gọi là hồ thì đúng hơn.</p><p>Bao bọc xung quanh trên bờ ao là rừng cây cổ thụ, đa số là cây sao, cây dầu hàng trăm năm tuổi, có rễ xù xì trồi lên mặt đất cả mét thành những hình thù lạ mắt bốn mùa rợp bóng thâm u tạo không gian thanh bình, yên tĩnh.</p><p>Có bộ rễ lớn đến nỗi có thể tạo thành cái hang độc nhất vô nhị, trẻ con có thể chui vào vui chơi. Lại có bộ rễ cây trở thành ghế ngồi nghỉ chân của khách. Người bản xứ lý giải rằng, những bộ rễ đồ sộ, quấn lấy nhau và nằm trên cao cách mặt đất như ngày nay là do khu đất xung quanh ao bị sụt lún xuống thấp, rễ cây lộ thiên và phát triển theo thời gian.</p>', 2, 4, 4, '2024-12-12 18:56:57', '2024-12-15 06:14:57'),
(3, 'Đền thờ Chủ tịch Hồ Chí Minh', 'Ấp Vĩnh Hội, xã Long Đức, thành phố Trà Vinh, tỉnh Trà Vinh', 'Miễn phí', '<p>Đền thờ Chủ tịch Hồ Chí Minh, người dân địa phương vẫn quen gọi là Đền thờ Bác Hồ, nhà nghiên cứu Trần Bạch Đằng khái quát thành biểu tượng “Công trình của Trái tim” bởi ý nghĩa thiêng liêng của việc hình thành, quá trình chiến đấu bảo vệ ngoan cường và giá trị tinh thần của ngôi đền trong đời sống tinh thần của Đảng bộ, quân dân tỉnh Trà Vinh.</p><p>Ngôi đền tọa lạc tại ấp Vĩnh Hội, xã Long Đức, thành phố Trà Vinh, cách trung tâm tỉnh lỵ Trà Vinh hơn 4 km về phía bắc. Đền thờ Chủ tịch Hồ Chí Minh tỉnh Trà Vinh đã được Bộ Văn hóa Thông tin, nay là Bộ Văn hóa, Thể thao và Du lịch xếp hạng di tích lịch sử – văn hóa cấp quốc gia vào năm 1989.</p><p>Khu di tích đền thờ Bác Hồ rộng 5,4 ha với các hạng mục chính như: Đền thờ Bác Hồ, nhà trưng bày thân thế sự nghiệp Chủ tịch Hồ Chí Minh, khuôn viên cây xanh, ao cá, khu vui chơi cắm trại…và đặc biệt là mô hình Nhà sàn Bác Hồ được thiết kế, in sao và lắp khoa học với tỉ lệ 97% theo nguyên bản nhà sàn Bác Hồ tại Phủ Chủ tịch ở thủ đô Hà Nội.</p><p>Sau ngày thống nhất đất nước, đáp ứng nguyện vọng của nhân dân, Đảng bộ, chính quyền tỉnh Trà Vinh đã nhiều lần trùng tu, tôn tạo cũng như xây dựng mới các hạng mục theo quy hoạch của một khu di tích lịch sử – văn hóa gắn với chức năng du lịch. Toàn bộ diện tích khu di tích là gần 04 ha, bao gồm các công trình chính là Vỏ bao che, Nhà Trưng bày, công viên…</p><p>Nép mình dưới những lũy tre ngày nào che chở ngôi Đền, Vỏ bao che được thiết kế theo dạng một đóa sen cách điệu màu hồng tươi. Bên trong, ngôi Đền được phục chế lại theo đúng nguyên trạng khiêm tốn, đơn sơ, với kích thước 4 x 4 m bằng khung gỗ, mái lợp lá, vách tôn. Tại đây, mỗi dịp lễ tết, nhiều đoàn đại biểu đại diện lãnh đạo tỉnh, lực lượng vũ trang và đồng bào các giới trong tỉnh Trà Vinh đến đặt vòng hoa, thắp nén hương thơm, thành kính báo cáo cùng Bác những thành tựu mới nhất của mình.</p><p>Nhà Trưng bày được xây dựng theo kiến trúc truyền thống dân tộc. Trong đó, nhiều hiện vật, hình ảnh, tài liệu giúp người tham quan hiểu được một cách khái quát về cuộc đời hoạt động của Bác; truyền thống đấu tranh kiên cường, bất khuất trong kháng chiến và những thành tựu trong công cuộc đổi mới của Đảng bộ, nhân dân tỉnh Trà Vinh; quá trình xây dựng và chiến đấu bảo vệ ngôi Đền.</p>', 2, 4, 4, '2024-12-15 06:45:24', '2024-12-24 19:12:51'),
(4, 'Chùa Âng', 'Phường 8, thành phố Trà Vinh, tỉnh Trà Vinh', 'Miễn phí', '<p>Chùa Âng còn được gọi là Wat Angkor Raig Borei theo ngôn ngữ Paly là một ngôi chùa cổ tại thành phố Trà Vinh. Nằm trong cụm danh thắng nổi tiếng xứ dừa sáp Ao Bà Om cùng bảo tàng văn hóa dân tộc Khmer, chùa Âng là điểm du lịch nổi bật trên bản đồ du lịch Trà Vinh mà bạn không thể bỏ qua.</p><p>Kiến trúc của chùa Âng Trà Vinh gây ấn tượng với những tòa nhà hình tháp vươn thẳng lên trời, tạo nên vẻ đẹp nguy nga, tráng lệ và vô cùng trang nghiêm. Từ xa nhìn vào, bạn sẽ bị cuốn hút bởi vẻ đẹp cổ kính và uy nghi của ngôi chùa cổ hơn 1000 năm tuổi này.</p><p>Theo sử sách, chùa Âng được xây dựng vào thế kỷ thứ 10 và trải qua nhiều công đoạn trùng tu và sửa chữa từ đó đến nay. Mặc dù đã trải qua nhiều lần sửa chữa và xây mới các công trình phụ, chánh điện của chùa vẫn giữ được nguyên trạng từ buổi đầu mới hình thành.</p><p>Chùa Âng Trà Vinh không chỉ là một công trình kiến trúc cổ kính mà còn là nơi lưu giữ nghệ thuật với nhiều tác phẩm tượng thần, tiên nữ, tượng chằn, chim thần và các hình ảnh khác liên quan đến Phật Thích Ca. Kiến trúc và trang trí của chùa Âng đều phản ánh đậm bản sắc văn hóa tâm linh và tôn giáo của đồng bào Khmer Nam Bộ.</p><p>Với vị trí đắc địa và vẻ đẹp lôi cuốn, chùa Âng là một điểm đến không thể bỏ qua cho những người muốn khám phá văn hóa và lịch sử độc đáo của tỉnh Trà Vinh. Đến thăm chùa Âng, bạn sẽ được trải nghiệm không khí tâm linh và thư thái giữa không gian truyền thống Khmer và nét hiện đại của thành phố Trà Vinh.</p><p>Chùa Âng nổi bật với phong cách kiến trúc chùa Khmer Nam Bộ nằm trên khuôn viên rộng 4ha, được bao phủ bởi cây cổ thụ và hào nước sâu bao bọc. Cổng chùa gồm 3 ngọn tháp với lối trang trí bằng nghệ thuật truyền thống Khmer, biến nơi đây trở thành tuyệt tác điêu khắc kỳ công và tinh xảo. Những tượng chằn, tiên nữ và chim thần được trang trí trên cổng chùa mang đến một diện mạo tráng lệ làm nổi bật vẻ đẹp văn hóa và tâm linh của ngôi chùa.</p>', 0, 2, 4, '2024-12-15 06:48:36', '2024-12-18 06:17:22'),
(5, 'Núi Cô Tô', 'Xã Cô Tô, Huyện Tri Tôn, tỉnh An Giang', 'Miễn phí', '<p>Núi Cô Tô gọi tắt là núi Tô, còn có tên gọi khác là Phụng Hoàng sơn, tên Khmer là Phnom-Ktô, nằm trong dãy Thất Sơn, thuộc xã Cô Tô, Huyện Tri Tôn (An Giang).</p><p>Núi Cô Tô có chiều cao 614m, dài 5.800m và rộng 3.700m, nơi đây được tạo hóa ban tặng hàng trăm hệ thống hang động ngầm rộng lớn và vững chắc, đây cũng chính là điểm thu hút hàng ngàn lượt du khách đến tham quan mỗi năm.</p><p>Đến với Cô Tô, du khách sẽ được lắng nghe câu truyện truyền thuyết lý thú được người dân lưu truyền hàng trăm năm qua, rằng các nàng tiên nữ thường hạ phàm xuống vùng núi Thất Sơn những đêm trăng sáng để dạo chơi và vui đùa. Một hôm các nàng chơi trò ném đá và sáng hôm sau nơi ấy xuất hiện một ngọn núi nhỏ, đá chồng chất lên nhau với muôn hình thù hấp dẫn, đó chính là Cô Tô ngày nay. Một giả định khác không gắn với truyền thuyết là do núi có hình dáng giống như cái tô lật úp, nên gọi là núi Tô.</p><p>Nằm giữa những cánh đồng bao la, bát ngát, ngọn núi Cô Tô khoác trên mình vẻ đẹp hoang sơ, kỳ vĩ say đắm lòng người. Những ngôi nhà được xây dựng trên các vách đá dựng đứng, từng rặng cây đung đưa theo gió như cơn sóng biển đang gợn từng cơn, đem lại khí hậu mát mẻ quanh năm. Khi đặt chân đến nơi bạn còn không khỏi ngỡ ngàng trước khung cảnh bao la rộng lớn và núi non hùng vĩ trước mặt.</p><p>Núi Cô Tô không có một địa chỉ chính xác trên bản đồ như những chung cư hay hàng quán. Tuy nhiên, bạn đừng lo rằng không tìm được, xét về kích cỡ khổng lồ của chúng thì nhìn từ xa thôi cũng đủ để thấy rồi. Để dễ dàng hơn, bắt đầu từ hướng Long Xuyên khách có thể đi theo đường tỉnh lộ 943 xuôi về thị trấn Núi Sập. Từ đây hỏi đường đến núi Cô Tô sẽ rất dễ dàng. Hoặc bạn cũng có thể đi con đường khác. Rất nhiều hướng đều dẫn tới núi, tuy nhiên với tỉnh lộ 943 thì khách sẽ được tận hưởng nhiều trải nghiệm thú vị hơn.</p>', 2, 1, 7, '2024-12-15 06:49:55', '2024-12-18 06:17:49'),
(6, 'Bến Ninh Kiều', 'Phường Tân An, quận Ninh Kiều, thành phố Cần Thơ', 'Miễn phí', '<p>Bến nước này nằm ven bờ phải sông Hậu, ở phường Tân An, quận Ninh Kiều, thành phố Cần Thơ. Nó nằm giữa ngã ba sông Hậu và sông Cần Thơ nên từng được coi là bến tàu giao thương hàng hóa trong thời Pháp thuộc. Cho tới thời điểm hiện tại, người ta vẫn chưa tìm được tài liệu chính thức nào ghi chép về lịch sử hình thành của địa điểm này. Chỉ biết rằng theo một giai thoại, nơi này từng là một bến sông tại đầu chợ Cần Thơ.</p><p>Khi Nguyễn Ánh di chuyển vào trong Nam và đi qua dòng sông Hậu, ông đã nghe thấy tiếng ngâm thơ và câu hò ngọt ngào trong tiếng sáo, từ đó đặt tên con sông ấy là Cầm Thi Giang. Đến năm 1957, tỉnh trưởng Phong Dinh đã đề nghị đổi tên khu vực bến thành Ninh Kiều, gắn liền với chiến thắng oai hùng của nghĩa quân Lam Sơn. Tháng 8 năm 1958, tên gọi bến Ninh Kiều chính thức được công nhận và in sâu vào tâm trí của người dân cho đến tận ngày nay.</p><p>Bến nước này sở hữu khung cảnh sông nước hữu tình với những nét văn hóa đặc trưng của vùng sông nước. Nó được coi là biểu tượng của thành phố Cần Thơ, gắn liền với lịch sử phát triển hào hùng của địa phương. Tính đến nay, bến tàu được đầu tư thành công viên Ninh Kiều với tổng diện tích lên đến 7.000m2. Đây là địa điểm du lịch nổi tiếng ở Cần Thơ, bao gồm hàng loạt những điểm vui chơi và tham quan nổi tiếng.</p><p>Khí hậu ở Cần Thơ vô cùng mát mẻ và dễ chịu nên bạn có thể đến đây vào bất kỳ thời điểm nào trong năm. Tuy nhiên, để chuyến đi được thuận lợi nhất, bạn nên lựa chọn dịp mùa khô, từ tháng 12 đến tháng 4 năm sau. Ngoài ra, nếu muốn khám phá những lễ hội đặc sắc ở địa phương, bạn nên đến bến nước Ninh Kiều vào tháng Tư hoặc tháng Chạp. Những lễ hội nhộn nhịp như lễ Thượng Điền và lễ Hạ Điền chắc chắn sẽ đem đến cho bạn nhiều trải nghiệm thú vị.</p>', 2, 1, 9, '2024-12-15 06:51:53', '2024-12-18 06:18:07'),
(7, 'Chợ nổi Trà Ôn', 'Đường Trưng Trắc, Xã Lục Sĩ Thành, Huyện Trà Ôn, Tỉnh Vĩnh Long', 'Miễn phí', '<p>Chợ nổi Trà Ôn nằm ở huyện Trà Ôn, tỉnh Vĩnh Long. Chợ cách trung tâm thành phố Vĩnh Long khoảng chừng 40km và cách thành phố Hồ Chí Minh khoảng 162km. Tùy theo điểm xuất phát và nhu cầu, bạn có thể đến đây bằng phương tiện xe máy, xe khách hay máy bay.</p><p>Tương tự như nhiều chợ nổi khác ở miền Tây, chợ nổi Trà Ôn hoạt động từ rất sớm, bắt đầu từ 3 – 4 giờ sáng và kết thúc lúc 11 giờ trưa. Theo kinh nghiệm thì bạn nên đi chợ vào lúc 5 – 6 giờ sáng. Đây là thời điểm lý tưởng này để bạn đến đây tham quan.</p><p>Từ 5 - 6 giờ sáng là khung giờ chợ nổi Trà Ôn hoạt động sôi nổi nhất. Không khí mua bán ở thời điểm này vô cùng tấp nập, nhộn nhịp. Bên cạnh đó, thời tiết sáng sớm cũng cực kỳ mát mẻ. Rất thoải mái để bạn có thể dạo một vòng quanh chợ. Đến tham quan chợ nổi thời điểm này, bạn còn có cơ hội được ngắm khung cảnh bình minh tuyệt đẹp trên sông.</p><p>Hầu hết các bến thuyền ở huyện Trà Ôn đều có cho thuê thuyền phục vụ khách du lịch đi tham quan chợ nổi. Khi thuê thuyền, bạn nên trao đổi để thống nhất giá trước, tránh tình trạng bị hét giá. Hiện giá thuê thuyền tham quan chợ nổi Trà Ôn sẽ giao động trong khoảng từ 20.000 – 30.000 đồng.</p><p>Sau khi đã thuê được thuyền, bạn sẽ được chủ thuyền chở xuôi theo dòng sông Hậu để đến chợ nổi Trà Ôn. Khi vừa mới đến gần khu chợ, bạn sẽ thấy được ngay không khí buôn bán tấp nập của người dân nơi đây. Hằng ngày, chợ nổi Trà Ôn có đến khoảng 100 thuyền bè từ khắp các tỉnh miền Tây đến buôn bán, giao thương.</p><p>hững chiếc thuyền trên chợ nổi như một cửa hàng di động, chở đầy đủ các loại mặt hàng buôn bán. Trong đó trái cây, rau củ và các mặt hàng nông sản được trao đổi nhiều nhất. Bởi lẽ, các tỉnh miền Tây là nơi trù phú với hệ thống sông ngòi kênh rạch dày đặc, rất thích hợp để phát triển nông nghiệp. Ngoài ra, trên chợ nổi còn có các thuyền bán đồ ăn, thức uống, các đồ dùng sinh hoạt, thực phẩm sử dụng hằng ngày,… Bất kỳ mặt hàng nào trên đất liền, bạn cũng có thể tìm thấy ở chợ nổi Trà Ôn.</p>', 0, 1, 5, '2024-12-15 07:29:55', '2024-12-18 20:02:44'),
(8, 'Làng nổi Tân Lập', 'Xã Tân Lập, huyện Mộc Hóa, tỉnh Long An', 'Miễn phí', '<p>Các bạn đừng hiểu lầm làng nổi Tân Lập bên trong có một ngôi làng nhé, nơi đây là một khu rừng tràm nguyên sinh rộng lớn và những con đường bí ẩn dẫn vào rừng. Đây được xem là địa điểm phù hợp dành cho những ai thích tìm về với thiên nhiên hoang dã, khám phá nét văn hoá sông nước miền Tây Nam Bộ.</p><p>Sở dĩ có cái tên Làng nổi Tân Lập là do trước kia khi chưa được quy hoạch, vào mùa nước nổi khoảng tháng 7 âm lịch hàng năm người dân ở đây thường nâng cao sàn nhà theo con nước lên, nhìn từ xa giống như một làng nổi trên mặt nước mênh mông. Do đó, khi quy hoạch khu du lịch này, tên gọi làng nổi gắn với địa danh xã Tân Lập đã được đặt cho khu du lịch.</p><p>Với diện tích 135ha, có vùng đệm rộng 500ha được quy hoạch để xây dựng khu du lịch đặc trưng của Long An nói riêng và cả vùng đất ngập nước Đồng Tháp Mười nói chung. Du lịch Long An ghé thăm làng nổi Tân Lập này bạn sẽ được hòa mình vào vùng đất ngập nước đặc trưng với sinh cảnh rừng tràm, sen – súng, lục bình, lúa ma điển hình của khu vực và là nơi cư trú của nhiều loại động vật (chim, cò, cá…)</p><p>Làng nổi là một khu du lịch sinh thái với cảnh quan thay đổi lớn theo mùa. Nếu bạn thắc mắc làng nổi Tân Lập vào thời điểm nào đẹp nhất? thì câu trả lời chính là du lịch miền Tây vào mùa nước nổi tức là từ tháng 8 tới tháng 11 âm lịch hàng năm. Vào mùa nước nổi, nếu bạn đứng từ trên cao nhìn xuống sẽ thấy làng nổi Tân lập giống như một hòn đảo xanh thẳm giữa biển nước mênh mông. Tất cả tạo nên một bức tranh thiên nhiên vô cùng sống động.</p><p>Đến khu du lịch sinh thái làng nổi Tân Lập, du khách có thể tản bộ trên con đường xuyên rừng tràm, đi thuyền xuôi theo rạch Rừng, thả mình vào thiên nhiên trên quãng đường dài hơn 3km xung quanh rừng tràm bằng thuyền cáp kéo.</p><p>Sau khi mua vé, du khách sẽ bắt đầu len lỏi theo những con rạch bằng xuồng nhỏ giữa rừng tràm. Con rạch chính dẫn vào khu trung tâm Làng nổi Tân Lập có tên là Rạch Rừng. Sẽ thật bình yên khi du khách ngồi trên xuồng lênh đênh trên rạch rừng, ngửi hương tràm, ngắm những vạt sen, súng rực nở một góc sông, nhìn những cánh chim chao liệng trên bầu trời xanh ngắt, thỉnh thoảng lại nghiêng mình theo con nước.</p>', 0, 1, 1, '2024-12-15 07:36:58', '2024-12-18 06:19:09'),
(10, 'Làng cổ Phước Lộc Thọ', 'Xã Hựu Thạnh, huyện Đức Hòa, tỉnh Long An.', 'Miễn phí', '<p>Làng cổ Phước Lộc Thọ là điểm du lịch độc đáo với 22 ngôi nhà gỗ cổ mang bản sắc ba miền đất nước và nhà sàn của các dân tộc thiểu số. Nơi đây còn có nhiều cổ vật quý từ vua chúa, quan quân, địa chủ, người dân và các vật tâm linh văn hóa. Bước vào cổng thành thời xưa, bạn sẽ ngắm được hòn non bộ lớn, bộ tượng Phước Lộc Thọ bằng đá cẩm thạch và những nét cổ kính của các ngôi nhà xưa.</p><p>Nổi bật nhất là ngôi nhà chữ “Công” trên 100 tuổi với 104 cột khảm xà cừ Tứ linh và Tứ hữu, các vách chạm trổ hoa quả, chim muông và nhiều cổ vật quý hiếm như bộ ván của vua Bảo Đại, chiếc gương soi của hoàng hậu… Làng cổ Phước Lộc Thọ còn có không gian sinh thái hữu tình, vườn lan phong phú, khu hồ bơi và khu ẩm thực đa dạng.</p><p>Ngoài ra, bạn còn có thể chiêm ngưỡng những ngôi nhà mang phong cách riêng của từng miền. Nhà rường Huế thể hiện sự uy nghi của quan lại và giới thượng lưu xứ kinh kỳ thời phong kiến. Nhà rường Nam Bộ phản ánh sự giản dị và thoáng đãng của người miền Nam. Nhà sàn Tây Nguyên và Đông Nam Bộ biểu hiện nét đặc trưng của các dân tộc thiểu số. Mỗi ngôi nhà đều có những điểm nhấn riêng biệt về kiến trúc, hoa văn, chất liệu và màu sắc. Đây cũng là cơ hội để bạn tìm hiểu về lịch sử, văn hóa và đời sống của người Việt qua những ngôi nhà này.</p><p>Khu tham quan là nơi bạn có thể chiêm ngưỡng những ngôi nhà cổ được chọn lọc và mang về từ khắp các vùng miền của Việt Nam. Mỗi ngôi nhà cổ đều có kiến trúc, phong cách và câu chuyện riêng biệt, phản ánh đặc trưng của vùng đất đó. Bạn sẽ được ngắm nhìn những mái ngói đỏ thấm màu thời gian, các cột gỗ chạm khắc tinh xảo, bức tranh đồng quê yên bình. Bạn cũng có thể tham gia vào những hoạt động vui chơi giải trí như xem xiếc, múa lân, ca trù, chèo kéo hay thưởng thức những món ăn dân dã tại đây.</p>', 0, 1, 1, '2024-12-19 02:04:34', '2024-12-19 02:04:34'),
(11, 'Nhà cổ trăm cột', 'Xã Long Hựu Đông, huyện Cần Đước, tỉnh Long An', 'Miễn phí', '<p>Nhà Trăm Cột có diện tích kiến trúc 882m2, chính diện hướng Tây Bắc, tọa lạc trên một khu vườn rộng 4.044m2. Ngôi nhà có kết cấu kiến trúc gồm 3 gian, 2 chái; nội thất gồm có hai phần: phần trước là nội tự - ngoại khách (phía trong thờ tự, phía ngoài tiếp khách); phần sau là phần để ở và sinh hoạt; lẫm lúa ở sau cùng đã bị tháo dở năm 1952, đã được trùng tu, tôn tạo lại. Vật liệu xây nhà hoàn toàn bằng các loại danh mộc như cẩm lai, gõ đỏ, gỗ mật…, mái lợp ngói âm dương, nền bằng đá tảng, cách mặt đất 0,9 m, nền lát gạch Tàu hình lục giác.</p><p>Nhà Trăm Cột có kiến trúc truyền thống, kiểu nhà rường ở miền Trung với kết cấu xuyên trính (còn gọi là nhà đâm trính, nhà rường…), khung sườn kiểu bát trụ, định vị theo hướng Tây-Đông,Tiền-Hậu. Các bộ phận của kết cấu chính như trính, trổng đều được trang trí bằng cách chạy chỉ, uốn cong. Tiếp giáp giữa bộ phận trính và trổng để đỡ đòn dông nóc nhà được cách điệu hình “chày cối” tượng trưng cho âm dương hòa hợp (nên còn gọi là kiểu nhà chày cối). Kết cấu này có nhiều ưu điểm bởi bộ khung rất chắc chắn. Nội thất ngôi nhà kiểu bát trụ không có hàng cột giữa nên không gian được tạo ra ở giữa nhà rất rộng thích hợp để thờ tự.</p><p>Xét về qui mô kiến trúc, Nhà Trăm Cột không lớn so với một số ngôi nhà cổ cùng thời khác, nhưng nghệ thuật trang trí ở đây rất đáng chú ý, từ cách bố cục, thể hiện đề tài đến xử lý kỹ thuật, đều cho thấy tay nghề điêu khắc của các nghệ nhân ở vào trình độ điêu luyện. Toàn bộ hệ thống vì kèo, xuyên được chạm nổi, chạm lọng các đề tài Vân hóa long”, “ Tứ thời”… kiểu “Dây lá hóa” đặc trưng của Huế rất công phu, sắc sảo. Các gian nội tự -ngoại khách là nơi tập trung cao nhất giá trị thẩm mỹ của công trình mà người xưa đã gửi gắm trên từng nét chạm. Đó là một tập hợp đa dạng, phong phú các đề tài cổ điển như “Tứ linh” ,Tứ thời”, “Bát quả”; các mô típ thể hiện Phúc - Lộc -Thọ bên cạnh các đề tài phương Tây như Hoa Hồng, Sóc - Nho…, cùng các đề tài cây trái của vùng đất Nam Bộ như mãng cầu, bình bát, khế, măng cụt …được các nghệ nhân thể hiện công phu trên các bao lam, các khung ô hộc, vách ngăn, vách lá gió, bàn thờ, ghế nghi, bàn tròn, bàn dài…bằng kỹ thuật chạm lọng, chạm nổi, chạm bong kênh, chạm nổi trên nền chạm lọng… hết sức điêu luyện.</p>', 0, 4, 1, '2024-12-19 02:05:56', '2024-12-19 02:05:56'),
(12, 'Khu du lịch cánh đồng bất tận', 'Xã Bình Phong Thạnh, huyện Mộc Hóa, tỉnh Long An.', 'Miễn phí', '<p>Đến với Long An du khách sẽ được chiêm ngưỡng những cánh đồng bất tận, thưởng thức những li nước dược liệu thơm mát để xua đi cái mệt mỏi của cuộc sống thường ngày. Khu du lịch Cánh Đồng Bất Tận nằm trong Khu bảo tồn dược liệu Đồng Tháp Mười thuộc xã Bình Phong Thạnh, huyện Mộc Hóa, tỉnh Long An.</p><p>Với sự đa dạng sinh học, đặc biệt là các loại dược liệu quý hiếm, nơi đây trở thành khu du lịch sinh thái đặc trưng của tỉnh nói riêng, du lịch Miền Tây nói chung và là khu rừng tràm gió nguyên sinh duy nhất tại Việt Nam. Cảnh vật nguyên sơ được giữ gìn từ hàng chục năm trước, cùng khu bảo tồn các giống tràm bản địa, vườn dược liệu có một không hai sẽ làm thỏa mãn du khách đến từ phố thị, nơi vốn ồn ào, náo nhiệt.</p><p>Lịch sử hình thành và phát triển của Công ty cổ phần Nghiên cứu Bảo tồn và Phát triển dược liệu Đồng Tháp Mười trải qua hơn 3 thập kỷ. Từ những 80 của thế kỷ XX, có những con người từ phương xa đến vùng đất Đồng Tháp Mười, khi ấy nơi đây là vùng đất chết, nhưng với tinh thần say mê lao động, họ đã chinh phục thiên nhiên, lao động, sáng tạo và nghiên cứu biến cánh đồng hoang bất tận thành cánh đồng trù phú, rồi bảo tồn dược liệu, sinh thái và môi trường thiên nhiên nơi này.</p><p>Thời gian du lịch Cánh Đồng Bất Tận đẹp nhất là vào mùa nước nổi tầm tháng 9 đến tháng 11. Khi du lịch Miền Tây vào mùa nước nổi, du khách sẽ được đắm chìm trong không gian của vương quốc chim, cò với mật độ dày đặc, thực vật mênh mông của vùng sông nước Đồng Tháp Mười. Hàng năm, vào đêm rằm tháng Giêng tại Khu du lịch Cánh đồng bất tận đều diễn ra sự kiện văn hóa đặc trưng là ngày giỗ tổ Hải Thượng Lãn Ông và Tuệ Tĩnh; đồng thời cũng là ngày Tết Nguyên tiêu thu hút nhiều du khách thập phương tham dự.</p>', 0, 1, 1, '2024-12-19 02:07:21', '2024-12-19 02:07:21'),
(13, 'Biển Tân Thành', 'Xã Tân Thành, huyện Gò Công, tỉnh Tiền Giang', 'Miễn phí', '<p>Tại biển Tân Thành Gò Công, mỗi một mùa đều mang một nét đẹp riêng khác nhau. Chính vì thế, bạn có thể lựa chọn những thời điểm khác nhau để tham quan bãi biển này. Ngoài ra, nếu bạn là “tín đồ” mê hải sản, bạn có thể ghé đến biển Tân Thành Gò Công vào những mùa hải sản trong năm bao gồm:</p><p>Mùa nghêu: Trải dài từ tháng 3 đến tháng 9 âm lịch hàng năm</p><p>Mùa ốc: Tháng 5 âm lịch hàng năm</p><p>Mùa sam: Trải dài từ tháng 10 đến tháng 2 âm lịch hàng năm.</p><p>Là vùng biển phù sa, biển Tân Thành Gò Công thừa hưởng cho mình một sắc nâu riêng biệt với những bãi cát đen, cùng với đó là nước biển không được trong xanh giống như các bãi biển du lịch nổi tiếng khác. Thế nhưng, những vẻ đẹp độc đáo đó lại chính là những yếu tố then chốt làm nổi bật nét riêng của bãi biển này và khiến cho nơi đây trở nên thú vị hơn với nhiều cảnh quan thiên nhiên mới lạ, huyền ảo.</p><p>Bên cạnh đó, biển Tân Thành Gò Công cũng là điểm đến du lịch lý tưởng cho những người yêu thích bầu không khí trong lành, tìm kiếm sự bình yên hay đơn giản là được thưởng thức những món hải sản yêu thích mang hương vị của gió biển lồng lộng.</p><p>ặc biệt hơn, tại biển Tân Thành Gò Công còn xuất hiện một chiếc cầu vươn ra biển. Nơi đây chắc chắn sẽ giúp bạn sở hữu được những bức ảnh check-in “cực chill” được hòa quyện bởi các yếu tố thiên nhiên gom tụ lại. Bạn đầu, cây cầu này không có gì nổi bật bởi kiến trúc cơ bản, chất liệu bình thường. Nhưng chính sự đơn giản ấy lại rất hài hòa với khung cảnh và vẻ đẹp hoang sơ, yên bình nơi bãi biển Tân Thành Gò Công.</p>', 0, 3, 2, '2024-12-19 02:08:18', '2024-12-19 02:08:18'),
(14, 'Nhà thờ Cái Bè', 'Thị trấn Cái Bè, huyện Cái Bè, tỉnh Tiền Giang', 'Miễn phí', '<p>Nhà thờ do linh mục Adophe Keller người Đức và bà con giáo xứ Cái Bè xây dựng từ năm 1929-1932. Nhà thờ Cái Bè có lối kiến trúc Roman của phương tây bằng bê tông cốt thép đúc đá, qua bao thăng trầm thời gian vẫn giữ được dáng vẻ đẹp thanh thoát, cổ kính.</p><p>Mặt bằng nhà thờ có hình Thánh giá với hai cánh ngang rất cân đối, gồm một lòng chính và hai lòng phụ với khuôn viên rộng và mát mẻ. Nhìn từ trên cao, nhà thờ như một dấu chữ thập khổng lồ nổi bật giữa khuôn viên cây xanh và xóm làng bình dị.</p><p>Tháp chuông có bộ chuông rất lớn gồm 4 trái, được đúc tại Pháp vào năm 1931, với kỹ thuật thiết kế quả lắc chuông và thanh treo chuông rất tiên tiến.</p><p>Bộ chuông nhà thờ Đức Bà Sai Gon do một hãng khác đúc thì thua xa về kỹ thuật thiết kế quả lắc của của nhà thờ này. Dưới chân tháp chuông là một hầm chứa nước khá lớn nhằm khuếch đại âm thanh của tiếng chuông. Tiếng chuông nhà thờ là âm thanh của sự yên lành, thanh bình, thánh thiện, gieo vào lòng người những cung bậc của bác ái và hân hoan.</p><p>Mái vòm cao, chia múi với những hoa văn đơn giản mà tinh tế. Nội thất tráng lệ cùng những bức tranh được bài trí trang trọng bên trong nhà thờ. Tấm tranh bằng kính màu vừa có tác dụng chiếu sáng nội thất thánh đường vừa mang tính thẩm mỹ độc đáo, tạo nên một không gian linh thiêng cho những tín đồ tin tưởng nguyện cầu.</p>', 0, 2, 2, '2024-12-19 02:09:03', '2024-12-19 02:09:03'),
(15, 'Nhà thờ Chánh Toà Mỹ Tho', '32 Hùng Vương, phường 7, thành phố Mỹ Tho, tỉnh Tiền Giang', 'Miễn phí', '<p>Là ngôi nhà chung thứ ba của họ đạo Mỹ Tho, Nhà thờ Chánh Tòa chính thức được đặt viên đá đầu tiên và khởi công xây dựng vào ngày 11/8/1906 dưới sự giám sát của cha Régnier (người dân thường gọi với cái tên gần gũi hơn là Cha Gẫm) trên đại lộ Hùng Vương mà trước kia có tên là đại lộ Bourdais.</p><p>Ngược dòng lịch sử để nhìn lại quá khứ của họ đạo Mỹ Tho mới biết, hóa ra ngôi nhà thờ đầu tiên chính là nhà thờ thánh Phanxicô Xaviê do các linh mục của dòng Thừa Sai. Mãi đến năm 1866, Giám mục Miche đã quyết định khởi công xây dựng một thánh đường mới, đặt tên là Nhà thờ Vĩnh Tường và được cung hiến Thánh Tâm.</p><p>Sau này, Nhà thờ Vĩnh Tường đã xuống cấp, không còn khả năng sử dụng nên các giám mục đã quyết định xây dựng một thánh đường mới, đó chính là Nhà thờ Chánh Tòa Mỹ Tho. Nhà thờ vẫn giữ trọn vẹn lối kiến trúc Hy Lạp Roman của nhà thờ cũ, xây trên một nền đất sình với một gian chính và hai gian phụ.</p><p>Bởi vì được xây trên một nền đất sình nên chiều cao của Nhà thờ Chánh Tòa Mỹ Tho bắt buộc phải hạ thấp xuống để đảm bảo an toàn. Hiện nay, nhà thờ cao 24m, dài 53m và rộng hơn 17m, gồm một gian chính và hai gian phụ ở hai bên. Nhà thờ xây theo kiến trúc Hy Lạp – Roman thời Phục Hưng với phần cột tròn chống đỡ với phần mái vòm được trang trí bằng những họa tiết hoa văn tỉ mẩn, cầu kỳ và công phu.</p>', 0, 2, 2, '2024-12-19 02:09:46', '2024-12-19 02:24:09'),
(16, 'Làng cổ Đông Hòa Hiệp', 'Xã Đông Hòa Hiệp, huyện Cái Bè, tỉnh Tiền Giang', 'Miễn phí', '<p>Nếu quay ngược dòng lịch sử bạn sẽ thấy huyện Cái Bè là một mảnh đất khá trù phú từ những năm đầu thế kỷ 18. Ngoài ra đây còn được biết đến như một trung tâm văn hóa – kinh tế với tên gọi là Cái Bè Dinh. Sở dĩ có tên gọi này là bởi năm 1732 chúa Nguyễn Phúc Chu đã chọn thôn An Bình Đông, xã Đông Hòa Hiệp hiện tại làm lỵ sở của dinh Long Hồ.</p><p>Năm 1757 thì lỵ sở mới được di chuyển về thôn Long Hồ, thành phố Vĩnh Long hiện nay. Trong 25 năm làm lỵ sở Cái Bè đã thu hút được nhiều quan lại và cả địa chủ tới định cư. Đây cũng là lý do những dinh thự mọc lên, biến mảnh đất ở hạ lưu sông Mê Kông thêm phần trù phú.</p><p>Làng cổ Đông Hòa Hiệp Tiền Giang mang kiến trúc kết hợp giữa phương Đông và phương Tây, giao thoa nét xảo diệu của xứ kinh kỳ với âm hưởng sông nước Nam bộ phóng khoáng. Nước ta có tổng cộng 3 ngôi làng cổ nổi tiếng nhất là làng cổ Đường Lâm (Hà Nội), làng cổ Phước Tích (Huế) và Làng cổ Đông Hòa Hiệp Tiền Giang.</p><p>Một điểm mà chúng ta nên lưu ý khi đi khám phá Làng cổ Đông Hòa Hiệp Tiền Giang chính là không nên đến vào mùa mưa. Bởi lúc đó chúng ta không thể di chuyển ra thăm vườn được, mà đây lại là điểm đặc sắc chính của làng. Thế nên thời điểm đi khám phá đẹp nhất chính là từ tháng 1 đến tháng 5 khi vào mùa khô hoặc mùa trái cây.</p>', 0, 4, 2, '2024-12-19 02:10:57', '2024-12-19 02:10:57'),
(17, 'Làng hoa Sa Đéc', 'Thành phố Sa Đéc, tỉnh Đồng Tháp', '80.000 VNĐ - 105.000 VNĐ/khách', '<p>Làng hoa Sa Đéc thuộc thành phố Sa Đéc, tỉnh Đồng Tháp, là một trong những làng hoa nổi tiếng và lâu đời nhất miền Tây Nam Bộ. Nằm dọc theo bờ sông Tiền, làng hoa có diện tích hơn 500 ha với hàng trăm loài hoa và cây cảnh khác nhau. Đặc biệt, nơi đây nổi tiếng với những loài hoa truyền thống như cúc mâm xôi, hồng, mai vàng và đặc biệt là hoa cúc tần Ấn Độ.</p><p>Mỗi dịp Tết đến, làng hoa Sa Đéc trở nên rực rỡ và thu hút hàng ngàn khách du lịch Đồng Tháp ghé đến tham quan và chụp ảnh. Điểm độc đáo của làng hoa Sa Đéc đó chính là hoa ở đây được trồng trên giàn cao hoặc luống đất nổi, tạo nên một khung cảnh đầy màu sắc trải dài. Sự kết hợp giữa cảnh quan nên thơ và không khí trong lành đã góp phần làm cho làng hoa Sa Đéc trở thành điểm đến hấp dẫn đông đảo khách du lịch.</p><p>Thời điểm lý tưởng để bạn có thể đến tham quan Làng hoa Sa Đéc - Đồng Tháp là vào khoảng từ tháng 12 đến tháng 2 hàng năm, đặc biệt là trước và trong dịp Tết Nguyên Đán. Đây là lúc làng hoa rực rỡ khoe sắc và đẹp nhất với hàng trăm loại hoa nở rộ chuẩn bị cho mùa xuân. Du khách đến vào thời gian này sẽ được chiêm ngưỡng những luống hoa đầy màu sắc trải dài, từ cúc mâm xôi, hoa hồng, đến vạn thọ, tạo nên khung cảnh tươi tắn và rộn ràng hơn bao giờ hết.</p><p>Ngoài ra, khoảng thời gian này cũng có nhiều lễ hội và hoạt động văn hóa đặc sắc, như Lễ hội hoa xuân Sa Đéc thu hút đông đảo du khách tham gia. Không khí trong lành, tiết trời mát mẻ kết hợp với cảnh quan tuyệt đẹp khiến cho chuyến tham quan làng hoa Sa Đéc vào dịp này trở nên vô cùng thú vị và đáng nhớ.</p>', 0, 1, 6, '2024-12-19 02:11:53', '2024-12-19 02:11:53'),
(18, 'Nhà cổ Huỳnh Thuỷ Lê', 'Đường Nguyễn Huệ, Phường 4, Thành phố Sa Đéc', 'Miễn phí', '<p>Một trong những điểm nhấn nổi bật tạo nên sức hút cho công trình cổ xưa này, đó chính là lối kiến trúc kết hợp Việt, Hoa và phương Tây thú vị. Ngay khi bước vào không gian, bạn sẽ thấy sự xuất hiện của các loại gỗ quý được dùng làm khung sườn nhà, cột trụ và kết hợp đường nét hoa văn truyền thống. Nhờ đó, tạo nên tổng quan thu hút và ấn tượng cho bất kỳ ai khi ghé thăm.</p><p>Với tổng diện tích 258m2, tường giàu 30 - 40cm, tạo nên tổng quan thoáng mát và sự vững chắc cho công trình sau rất nhiều năm xây dựng. Nhà cổ Huỳnh Thủy Lê còn có phần khung cửa sổ, mặt tiền và trần nhà được trang trí phù điêu phong cách La Mã, Phục Hưng. Tất cả tạo nên vẻ đẹp huyền bí, ấn tượng cho tổng quan công trình.</p><p>Tuy nhiên, phần kiến trúc 3 gian đặc trưng của Nam Bộ Việt Nam vẫn được giữ nguyên, cùng mái ngói đỏ cong truyền thống. Cùng với đó, bên trong không gian của công trình cũng được sơn son thếp vàng đặc trưng của người Hoa. Tường của công trình được sử dụng tông màu vàng sáng, kết hợp những chi tiết gỗ nâu đen lâu đời, tạo nên điểm nhấn cổ xưa, trang trọng cho một công trình có hơn 125 năm tuổi.</p><p>Đặc biệt, giữa gian nhà bạn có thể thấy bàn thờ Quan Công được đặt chính giữa uy nghiêm, thể hiện cho quyền lực và sự phồn vinh của một gia tộc lớn. Đối với phần sàn nhà được thiết kế trũng xuống, dựa theo quan niệm lâu đời tiền bạc sẽ chảy vào nhà và không bị thất thoát về sau.</p>', 0, 4, 6, '2024-12-19 02:12:25', '2024-12-19 02:12:25'),
(19, 'Phước Kiển Tự', 'Xã Hoà Tân, Huyện Châu Thành, Đồng Tháp', 'Miễn phí', '<p>Trong số rất nhiều ngôi chùa nổi tiếng ở tỉnh Đồng Tháp có kiến trúc cổ kính, khung cảnh đẹp mắt thì chùa Phước Kiển không phải là chùa đẹp nhưng vẫn được đông đảo du khách và Phật tử viếng thăm vì sở hữu một hồ sen rất đặc biệt. Nhắc đến hoa sen, người ta thường liên tưởng đến vẻ đẹp thanh cao, tinh tế mà mỏng manh. Nhưng hoa sen trong ngôi chùa Phước Kiển ở Đồng Tháp lại nổi tiếng bởi kích thước khổng lồ, có thể “cõng” người mà chỉ làm khẽ xao động mặt nước.</p><p>Chùa Phước Kiển nằm ở xã Hòa Tân, huyện Châu Thành, tỉnh Đồng Tháp, được thành lập trước thời vua Thiệu Trị. Theo sư trụ trì Thích Huệ Từ thì trước đây ngôi chùa rất lớn, uy nghiêm, sở hữu không gian khoáng đãng, thanh tịnh, mát mẻ, Phước Kiển Tự còn từng là cơ sở hoạt động cách mạng. Tuy nhiên không may là vào năm 1966, bom đạn chiến tranh đã làm sập hoàn toàn ngôi chùa. Sau năm 1975, chùa được xây lại với kiến trúc đơn giản không cầu kỳ bao gồm: cổng vào, tháp thờ Phật Quan Âm và chính điện.</p><p>Những hố bom được các sư thầy trong chùa dùng làm hồ sen. Vừa khỏa lấp được vết tích của chiến tranh vừa có chỗ để khách du lịch tham quan. Trong ao sen có một loài sen kỳ lạ và hiếm thấy không chỉ ở Việt Nam mà ở cả các nước Đông Nam Á.</p><p>Ao sen ở chùa Phước Kiển có hình vuông tượng trưng cho đất, lá sen có hình tròn tượng trưng cho trời. Lá sen khổng lồ, to như những cái nia, vành cong gần cả tấc tay, nom rất đẹp mắt. Nếu không tận mắt nhìn thấy, chắc chắn bạn sẽ hồ nghi rằng, đây chỉ là lá sen làm bằng nhựa hoặc bên dưới lá có sắt thép chống đỡ.</p><p>Được biết, loài sen này xuất hiện trong ao của nhà chùa từ năm 1992 và tồn tại cho đến bây giờ. Không ai biết tên gọi chính xác của chúng nên người ta thường gọi bằng nhiều tên khác nhau. Có người gọi là sen vua, có khi gọi là súng nia, cây nong tầm,…chính vì có loài sen lạ nên người dân thường gọi chùa bằng cái tên dân dã “Chùa Sen Vua” hay “Chùa Lá Sen”…,</p>', 0, 2, 6, '2024-12-19 02:13:46', '2024-12-19 02:13:46'),
(20, 'Đồng sen Tháp Mười', 'Xã Mỹ Hòa, huyện Tháp Mười, tỉnh Đồng Tháp', 'Ngày thường 20,000 VND/ người. Cuối tuần là 30,000 VND/ người.', '<p>Để cảm nhận những điều tuyệt vời từ hoa sen, bạn nên đến Đồng Tháp Mười vào mùa hoa nở rộ, thường là vào mùa nước nổi từ tháng 6 đến tháng 11 hằng năm. Nếu không đến được vào mùa hoa nở nhiều nhất thì bạn vẫn có thể đến đây bất cứ lúc nào trong năm, vì không gian và không khí nơi đây vẫn thế, vẫn trong lành và dịu dàng như vậy.</p><p>Nếu đã đến đây, bạn có thể để ý xem sự chuyển màu đặc sắc của hoa sen. Thường vào buổi sáng thì hoa sẽ có màu hồng nhạt, sau đó chuyển sang hồng vào buổi trưa. Và lúc sen được xem là đẹp nhất trong ngày là khoảng 3h chiều vì lúc này hoa sẽ nở khá to khoe đài đen vàng lấp lánh dưới ánh mặt trời. Sau đó đến chiều thì sen có màu hồng đậm dần, rồi khi mặt trời lặn cũng là lúc màu sen đỏ như mặt trời hoàng hôn.</p><p>Điều làm bạn thích thú và u mê không lối thoát chính là bức tranh vùng quê rực rỡ màu hồng trắng của hoa xen kẽ giữa màu xanh của lá và chút nắng vàng của mặt trời. Cảnh thế này thì chỉ cần bạn chụp hình thôi, còn đẹp cứ để cánh đồng sen tại khu du lịch sinh thái đồng sen Tháp Mười lo.</p><p>Sau khi dạo bước vui chơi trực tiếp với những đóa sen thỏa thích thì bạn có thể đến các chòi lá ngay cạnh hồ sen để nghỉ ngơi. Ngồi bên trong các mái lá đơn sơ, nhìn ra cánh đồng sen bạt ngàn thoang thoảng hương sen nhè nhẹ, húp một tí trà sen nữa thì bạn sẽ phải bất ngờ vì cả người trở nên nhẹ nhàng và tâm hồn thanh tịnh hơn bao giờ hết.</p>', 0, 1, 6, '2024-12-19 02:14:37', '2024-12-19 02:14:37'),
(21, 'Vườn quốc gia Tràm Chim', 'Huyện Tam Nông tỉnh Đồng Tháp', 'Miễn phí', '<p>Vườn quốc gia Tràm Chim là vùng đất nằm trong địa phận của 7 xã (Tân Công Sính, Phú Đức, Phú Thọ, Phú Thành A, Phú Thành B, Phú Hiệp), thị trấn Tràm Chim thuộc huyện Tam Nông. Vườn quốc gia Tràm Chim có tổng diện tích hơn 7500 ha là mô hình thu nhỏ đặc trưng của vùng Đồng Tháp Mười, với hệ sinh thái đa đạng, nơi du khách khám phá những nét đặc trưng của miền Tây sông nước.</p><p>Vùng đất “sáu tháng đồng khô cỏ cháy, sáu tháng nước ngập trắng đồng” này là nơi phát triển của thảm thực vật phong phú với hơn 130 loài khác nhau. Hệ động vật ở đây nổi bật với hệ chim nước giàu có gồm 233 loài, thuộc 25 chi, 49 họ. Trong đó, 88% được tìm thấy vào mùa khô, chiếm ¼ tổng số các loài chim đã phát hiện ở Việt Nam. Và đặc biệt là loài Sếu đầu đỏ, lớn nhất trong họ Hạc – một tài sản thiên thiên vô giá của vườn quốc gia Tràm Chim ở Đồng Tháp.</p><p>Hệ cá ở vườn quốc gia Tràm Chim cũng không kém phần phong phú, vừa đóng vai trò cân bằng sinh thái vừa là nguồn thức ăn cho các loài chim. Trong đó có một số loài cá nằm trong sách đỏ Việt Nam như: cá Còm, cá Mang hổ, cá Ngựa nam, cá Duồng bay, cá Ét mọi, cá Hô…</p><p>Mùa nước nổi từ tháng 8 đến tháng 11 âm lịch (khoảng tháng 9 – 12 dương lịch) là mùa du lịch vườn quốc gia Tràm Chim. Khung cảnh ngập nước, xanh tốt, điểm xuyến sắc hồng của hoa sen, hoa súng bừng nở. Nguồn sản vật trở nên dồi dào và các loài chim như tụ họp về đây dự tiệc.</p><p>Vào khoảng thời gian này củng mùa chim sinh sản. Đền đây, du khách có dịp tận mắt chứng kiến cuộc sống sinh sôi, nảy nở của những loài chim quả là một điều thú vị. Hàng nghìn con chim đua nhau mớm mồi (tiêu biểu là điêng điểng và cồng cộc), thể hiện tình mẫu tử thiêng liêng và nâng tính giáo dục môi trường lên hàng đầu cho du khách gần xa, đồng thời có dịp lưu giữ mãi hình ảnh đẹp về nơi đất lành chim đậu.</p>', 0, 1, 6, '2024-12-19 02:15:08', '2024-12-19 02:15:08'),
(22, 'Lò gạch Mang Thít', 'Huyện Mang Thít, tỉnh Vĩnh Long', 'Miễn phí', '<p>Lò gạch Mang Thít Vĩnh Long đã tồn tại và lớn dần cùng với dòng sông Cổ chiên hơn 100 năm qua. Chính vì thế, lò gạch gốm này vô cùng nổi tiếng và lớn nhất ở vùng Đồng bằng sông Cửu Long. Không những thể, các sản phẩm của làng gốm còn được phép xuất khẩu sang nhiều nước phát triển trên thế giới. Dân gian, người bản địa sinh sống tại vùng đất này hàng trăm năm nay ưu ái gọi lò gạch Mang Thít Vĩnh Long là “Vương quốc gạch ngói”.</p><p>Lò gạch Mang Thít Vĩnh Long được mọi người nhớ đến với hình ảnh từng mái lò đỏ hồng, những hàng gạch nhuốm màu thời gian giữa dòng sông Cổ Chiên hàng trăm năm qua. Từ những viên gạch đỏ với đầy đủ sắc thái khác nhau, dưới bàn tay điêu luyện của nghệ nhân làng Mang Thít, nhiều tác phẩm kiệt tác được ra đời.</p><p>Theo lời kể của người dân địa phương, nghề làm gạch gốm thủ công truyền thống tại Vĩnh Long đã từng có một thời kỳ thịnh vượng và vô cùng huy hoàng đến nỗi bất kỳ gia đình nào sống ven sông này đều sở hữu một miệng lò. Đó là lý do tại sao làng nghề lò gạch gốm Mang Thít Vĩnh Long vẫn còn lưu giữ được nhiều giá trị truyền thống. Mỗi lò gạch nung được xem như là một biểu tượng của thời gian, phảng phất nhiều kỉ niệm.</p>', 0, 5, 5, '2024-12-19 02:16:05', '2024-12-20 20:34:21'),
(23, 'Chùa Phật Ngọc Xá Lợi', 'Xã Tân Ngãi, thành phố Vĩnh Long, tỉnh Vĩnh Long', 'Miễn phí', '<p>Đứng từ xa nhìn lại, bạn sẽ nhìn thấy hình ảnh cổng chùa với vẻ đẹp uy nghiêm, bề thế. MIA.vn nghĩ rằng, các bạn nên check-in ngay cổng chùa để lưu lại nhiều khoảnh khắc tuyệt đẹp, có 1 - 0 -2 ngay tại đây. Khi đến Chùa Phật Ngọc Xá Lợi Vĩnh Long, các bạn không chỉ được hòa mình vào khung cảnh thiên nhiên yên bình, thanh tĩnh mà còn được chiêm ngưỡng vẻ đẹp cổ kính, linh thiêng của ngôi chùa.</p><p>Ngôi chùa sở hữu diện tích hơn 1.7ha , được xây dựng vào năm 1970 do cố Hòa Thượng Thích Thiện Hoa trụ trì. Tuy nhiên, đến tháng 4 nằm 1975, vì nhiều lý do khác nhau nên việc thi công đã tạm dừng. Đến năm 2015, việc thi xông xây dựng tại Chùa Phật Ngọc Xá Lợi Vĩnh Long mới được tiếp tục. Trong đó có nhiều hạng mục đến thời điểm 2015 mới dần hoàn thiện như: chánh điện, bảo tháp, đài Đức Quan Thế Âm lộ thiên, cổng tam quan...</p><p>Chùa Phật Ngọc Xá Lợi Vĩnh Long được mọi người ví von như một thị trấn cổ thu nhỏ vì phong cách kiến trúc mang đậm bản sắc văn hóa Phật giáo của người Việt Nam. Với lối thiết kế khoa học, ngôi chùa sử dụng nhiều khoảng trống để tạo không gian nhẹ nhàng, thanh tịnh. Lối kiến trúc nghệ thuật vừa tinh xảo vừa hài hòa của Chùa Phật Ngọc Xá Lợi Vĩnh Long khiến nhiều người vô cùng thích thú khi được check-in tại đây. Không những thế, hầu hết các hạng mục từ ngoài vào trong của ngôi chùa đều mang đậm nét văn hóa tâm linh đặc trưng của kiến trúc truyền thống Việt Nam nên đã vô cùng thu hút khách thập phương.</p><p>Chùa Phật Ngọc Xá Lợi Vĩnh Long có rất nhiều góc hấp dẫn, vô cùng đẹp tạo điều kiện cho nhiều bạn trẻ đến đây sống ảo. Từ mái chùa cong cong, bậc thang bề thế đến bảo tháp cao lớn, mỗi góc tại Chùa Phật Ngọc Xá Lợi Vĩnh Long đều có thể trở thành nơi tuyệt vời để bạn có thể thả dáng chụp ảnh.</p>', 0, 2, 5, '2024-12-19 02:16:58', '2024-12-19 02:16:58'),
(24, 'Chùa ông Thất Phủ Miếu', 'Số 22, đường Nguyễn Chí Thanh, phường 5, thành phố Vĩnh Long.', 'Miễn phí', '<p>Chùa Ông Thất Phủ Miếu là một trong những công trình kiến trúc nổi bật của người Hoa trên mảnh đất Vĩnh Long. Người dân địa phương thường quen gọi là chùa Ông để thuận miệng. Tuy nhiên, tên thật của ngôi chùa lại Chùa Ông Thất Phủ Miếu bởi có 7 phủ của người Hoa đang hiện hữu ở trong ngôi miếu này. Trong đó có thể kể đến như: Ninh Ba, Phước Châu, Chương Châu, Truyền Châu, Quảng Châu, Triều Châu và Quỳnh Châu. Các phủ trên trực thuộc các tỉnh Trực Lệ, Phước Kiến và Quảng Đông của Trung Quốc.</p><p>Với kinh nghiệm của một số bạn trẻ đã từng đến tham quan Chùa Ông Thất Phủ Miếu, các bạn nên lưu lại một vài lưu ý sau đây:</p><p>- Chùa Ông Thất Phủ Miếu mở cửa tất cả các ngày trong tuần và giá vé hoàn toàn miễn phí. Do đó, mọi người có thể ghé đến tham quan bất cứ ngày nào trong tuần.</p><p>- Bạn nên dâng hương và chiêm bái đúng quy định.</p><p>- Không nên xả rác bừa bãi, gây mất trật tự trong lúc dâng hương.</p><p>- Các bạn nên mặc quần áo chỉn chu, kín đáo để phù hợp với hoàn cảnh hơn.</p><p>- Ngoài ra, theo kinh nghiệm của các bạn, chuyến tham quan đến chùa Ông thường kéo dài khoảng 2-3 giờ đồng hồ. Do đó, bạn nên tìm hiểu một vài điểm đến gần đó để hành trình khám phá của mình có thể chủ động hơn.</p><p>Theo sử sách ghi lại, Chùa Ông Thất Phủ Miếu đã có từ thời Nguyễn. Căn cứ vào các dữ liệu lịch sử, hai vị tướng nhà Minh Mạt tên là Dương Ngạn Địch và Trần Thượng Xuyên đã sang Việt Nam lánh nạn. Các quan tướng nhà Nguyễn cho phép người của Dương Ngạn Địch lập hội Thất Phủ, cũng tương tự như các bang cộng đồng hương của người Hoa lúc này.</p><p>Vì địa hình tương đối tốt, thuận lợi cả đường bộ và đường thủy cho nên người Hoa đã ưu ái chọn nơi này để đặt làm Hội quán tiếp xúc. Khi đến thời kỳ Pháp thuộc, số lượng người Hoa di cư đến Vĩnh Long để sinh sống ngày càng nhiều. Số người từ Quảng Đông, Triều Châu tách ra lập bang hội riêng nên một số người dân Phúc Kiến bị bỏ rơi đã cùng nhau tái thiết miếu Thất Phủ cũ. Ngôi miếu này được người dân đặt tên mới là \"Vĩnh An cung\" để trùng tu, gia công Hội quán cho bang của mình.</p>', 0, 2, 5, '2024-12-20 07:32:34', '2024-12-20 07:32:34'),
(25, 'Chợ nổi Ngã Bảy', 'Phường Ngã Bảy, thị xã Ngã Bảy, tỉnh Hậu Giang', 'Miễn phí', '<p>Chợ nổi Ngã Bảy còn gọi là chợ nổi Phụng Hiệp nức tiếng một thời, bởi bề dày lịch sử hơn trăm năm và không khí mua bán nhộn nhịp nhất vùng đồng bằng sông Cửu Long. Chợ nổi Ngã Bảy hình thành vào khoảng năm 1915, sau 10 năm đào kênh xáng ở đây. Chợ nằm ngay nơi giao nhau của 7 tuyến sông: Cái Côn, Mang Cá, Búng Tàu, Sóc Trăng, Xẻo Môn, Lái Hiếu, Xẻo Vong. Nhiều làng nghề đã hình thành dọc tuyến sông như đóng ghe, đan cần xé, trồng rẫy… Với chợ nổi Ngã Bảy, việc tụ họp tại 7 nhánh sông đã trở thành một nét riêng khó hòa lẫn và sẽ là điều bí ẩn thu hút những ai thích du lịch Miền Tây khám phá, bởi mỗi nhánh sông có một làng nghề đặc trưng không giống nhau… Nơi đây cũng đã đi vào thơ, nhạc càng làm say đắm lòng người.</p><p>Ở Nam bộ có nhiều chợ nổi nhưng không chợ nào “nổi” bằng chợ Ngã Bảy về quy mô, sự sung túc cũng như cái danh, cái thế của nó. Ngày trước, vùng tâm chợ Ngã Bảy có trên 1.000 ghe tàu lớn nhỏ; dịp cao điểm tết có khi đến hơn 3.000 chiếc; đò ngang cũng hàng trăm chiếc. Đêm xuống đèn dầu, đèn bình giăng giăng bập bềnh theo sóng nước suốt canh thâu như hội hoa đăng, thật kỳ thú..</p><p>Chợ nổi Ngã Bảy thường nhóm vào tờ mờ sáng hằng ngày. Từ 5 đến 8 giờ sáng là cao điểm cho việc mua bán nông sản tươi. Từ đó đến chiều và tối, chợ vẫn tiếp tục hoạt động. Hàng hóa ở chợ nổi vô cùng đa dạng, nhất là trái cây. Theo từng mùa, nhìn vào cảnh xuồng ghe tấp nập, đầy ắp trái cây, du khách sẽ biết được đang là vụ chính của loại trái cây nào.</p>', 0, 4, 10, '2024-12-20 07:36:41', '2024-12-20 07:36:41'),
(26, 'Rừng Tràm Vị Thủy', 'Xã Vĩnh Tường, huyện Vị Thủy, tỉnh Hậu Giang', 'Miễn phí', '<p>Điểm nhấn của khu du lịch sinh thái Việt Úc là vườn chim tự nhiên rộng 10 ha với các loại chim, cò đặc trưng vùng sông nước miền Tây như cò trâu, cò ngà, vạc, le le, cồng cộc, vịt trời; khu nuôi động vật hoang dã có heo rừng, trăn, ong lấy mật; các kênh mương được thả nhiều loại cá đồng như cá lóc, cá trê, cá thát lát, cá phi… Đây là nguồn cá để du khách trải nghiệm các hoạt động câu cá, đặt lờ, trúm, giăng lưới cũng như thưởng thức các loại cá sống trong môi trường tự nhiên.</p><p>Rừng tràm Vị Thủy không đơn thuần là một điểm tham quan mà còn chứa đựng vẻ đẹp văn hóa của con người và sông nước vùng Đồng bằng sông Cửu Long. Du lịch Hậu Giang, đến đây các bạn sẽ được ngồi thuyền xuôi theo những dòng kênh nằm dưới những tán cây xanh thẳm trong khu rừng và ngắm nhìn cảnh vật xung quanh. Trong không gian tĩnh lặng ấy, những đàn chim líu lo bay lượn như đang muốn chào mời du khách.</p><p>Thời điểm thích hợp để du lịch rừng tràm Vị Thủy chính là vào lúc sáng sớm hoặc chiều muộn vì vào thời điểm này bạn sẽ bắt gặp được nhiều loài chim hơn khi chúng chuẩn bị đi kiếm ăn và bay về tổ. Đặc biệt, vào mùa nơi đây đều có các loài chim về làm tổ. Nếu may mắn hơn bạn bắt gặp được rất nhiều loài chim quý hiếm có trong danh sách đỏ.</p><p>Tại khu du lịch sinh thái Việt Úc Hậu Giang, du khách có nhiều loại hình lưu trú để lựa chọn, trong đó có khu nghỉ dưỡng cao cấp, khu nhà sàn làm bằng gỗ, lợp lá dừa hoặc nghỉ tại phòng trên du thuyền di chuyển dọc các dòng kênh, rạch.</p>', 0, 1, 10, '2024-12-20 07:40:25', '2024-12-20 07:40:25'),
(27, 'Thiền Viện Trúc Lâm', 'Phường Vĩnh Tường, thị xã Long Mỹ, tỉnh Hậu Giang', 'Miễn phí', '<p>Thiền viện mới được khánh thành năm 2018. Sau hơn 3 năm thi công, 16 hạng mục của Thiền viện được xây dựng trên diện tích rộng hơn 4 ha. Đã hoàn thành và đưa vào sử dụng, góp phần tạo nên quần thể mang đậm kiến trúc văn hóa tâm linh.</p><p>Thiền viện Trúc Lâm Hậu Giang hoàn thành có ý nghĩa quan trọng. Trong việc bảo tồn và phát huy những giá trị truyền thống của văn hóa Phật giáo. Kết nối các di tích lịch sử, văn hóa truyền thống của địa phương. Và là điểm nhấn du lịch văn hóa tâm linh của mảnh đất Hậu Giang hiền hòa. Thiền viện là nơi tu hành, sinh hoạt tôn giáo của hơn 250 chức sắc, tăng, ni. Là nơi sinh hoạt chính của Ban Trị sự Giáo hội Phật giáo Việt Nam tỉnh Hậu Giang.</p><p>Thiền viện Trúc Lâm ở Hậu Giang không chỉ là nơi tu hành của các Tăng ni Phật tử trong tỉnh, mà còn là nơi sinh hoạt tín ngưỡng của người dân trong vùng, là điểm nhấn du lịch văn hoá tâm linh dành cho du khách thập phương các nơi về chiêm ngưỡng.</p><p>Dáng vóc ngôi thiền viện xây dựng theo kiến trúc mỹ thuật Phật giáo thời Lý, Trần trên diện tích 40.000 m2. Bao gồm các hạng mục: Chánh điện, nhà Tổ, lầu chuông, lầu trống, Cổng tam quan. Nhà nghỉ chân, tôn tượng Quan Âm lộ thiên, miếu thờ Mẹ Âu Cơ, giảng đường. Trai đường, nhà trụ trì, nhà khách, thư viện, Tăng xá, Ni xá…</p>', 0, 2, 10, '2024-12-20 07:43:44', '2024-12-20 07:43:44'),
(28, 'Con đường tre', 'Xã Thạnh Hoà, huyện Phụng Hiệp, tỉnh Hậu Giang', '20.000 VND (trẻ em) - 30.000 VND (người lớn)', '<p>Vườn tre Tư Sang Hậu Giang là một địa điểm du lịch sinh thái mới nổi thuộc khu vực ấp Phú Xuân, xã Thạnh Hòa, huyện Phụng Hiệp. Đây là một địa điểm tham quan với không gian rộng lớn, diện tích lên đến 3 hecta mang đến bạn nhiều trải nghiệm giải trí độc đáo và đáng khám phá.</p><p>Vườn tre Tư Sang Hậu Giang còn được biết đến với tên gọi Bamboo Garden. Đây vốn dĩ là một con đường tre xanh mát tuyệt đẹp của lão nông Đặng Văn Sang. Sở hữu vẻ đẹp bình dị cùng không gian trong lành đáng thưởng ngoạn, vườn tre Tư Sang thu hút đông đảo tín đồ du lịch tìm đến trải nghiệm và thư giãn sau những ngày làm việc mệt mỏi.</p><p>Phong cảnh làng quê của Vườn Tư Sang gắn liền với hình ảnh cây tre quen thuộc trong văn hóa làng xã của người Việt Nam. Hình ảnh cây tre vươn mình xõa bóng mềm mại nhưng lại vô cùng chắc chắn gợi nên hình ảnh người dân Việt Nam hiền hòa, đôn hậu nhưng lại mạnh mẽ, quật cường khi cần thiết.</p><p>Ông Đặng Văn Sang cho biết, khi những vụ mía và bạch đàn không mang lại hiệu quả kinh tế như kỳ vọng, ông đã quyết định trồng nên vườn tre này để cải thiện kinh tế gia đình. Vườn tre này đến này đã có tuổi đời lên đến hơn 20 năm và được tận tay ông Đặng Văn Sang chăm sóc và vun trồng.</p><p>Vào mỗi thời điểm rãnh rỗi, ông thường ra vườn tre tỉa nhánh, dọn lá rụng rồi ủ làm phân bón cho gốc tre. Nhờ sự chăm sóc tỉ mẩn, cẩn thận của ông, vườn tre Tư Sang luôn giữ được vẻ ngoài xanh tốt, tạo nên cảnh quan xinh đẹp để những tín đồ du lịch gần xa đến thưởng ngoạn.</p>', 0, 1, 10, '2024-12-20 07:45:48', '2024-12-20 07:45:48');
INSERT INTO `locations` (`id`, `name`, `address`, `price`, `description`, `status`, `id_type`, `id_province`, `created_at`, `updated_at`) VALUES
(29, 'Chùa Dơi', 'Phường 3, thành phố Sóc Trăng', 'Miễn phí', '<p>Tiến sâu vào thánh điện, ta sẽ thấy pho tượng Phật Thích Ca bằng đá nguyên khối đặt trên một tòa sen cao khoảng 2m. Ấn tượng không kém ngay gần đó là một pho tượng miêu tả Đức Phật cưỡi trên rắn thần Muchalinda.</p><p>Khách du lịch có cơ hội tìm hiểu cặn kẽ về cuộc đời đức Phật qua những bức tranh miêu tả Đức Phật, từ lúc ra đời cho tới khi được khai minh rồi nhập Niết bàn.. Các bộ kinh ghi trên lá cây thốt nốt cùng những hiện vật quý hiếm mang giá trị đặc sắc về văn hóa tín ngưỡng của vùng đất Nam Bộ cũng được lưu giữ trong khuôn viên trang nghiêm của chùa. Hướng dẫn viên du lịch chắn chắn sẽ thuyết minh về chùa Dơi Sóc Trăng giúp bạn hiểu hơn nhiều điều.</p><p>Đến chùa Dơi thì quả thật không nên bỏ qua những câu chuyện loài dơi làm nên cái tên của chùa trong lòng người dân tứ xứ. Khuôn viên chùa có nhiều cây sao và dầu – nơi trú ẩn của hàng vạn con dơi. Cứ chiều đến hàng vạn con dơi lại kéo về sân chùa che kín cả bầu trời. Khác với tâm lí sợ sệt loài dơi của chúng ta, các vị sư ở đây cho rằng việc dơi đổ về chùa là phúc lành nhà Phật cho ngôi chùa này nên họ rất tích cực bảo vệ bầy dơi.</p><p>Dường như loài dơi hiểu tấm lòng của người nhà Phật nên lạ lùng thay, chưa một cây trái nào trong vườn bị chúng dòm ngó tới. Khi di chuyển, chúng cũng “biết ý” bay lượn vòng chứ không bay thẳng qua nóc ngôi chính điện của chùa.</p>', 0, 2, 11, '2024-12-20 07:53:49', '2024-12-20 07:53:49'),
(30, 'Chợ nổi Ngã Năm', 'Phường 1, thị xã Ngã Năm, tỉnh Sóc Trăng', 'Miễn phí', '<p>Chợ nổi Ngã Năm thuộc thị xã Ngã Năm, cách TP Sóc Trăng khoảng 60 km là nơi thu hút du khách tham quan, trải nghiệm cuộc sống sông nước miền Tây. Muốn đến thăm chợ nổi Ngã Năm, bắt đầu từ trung tâm thành phố Sóc Trăng, du khách có thể di chuyển theo tuyến quốc lộ 1A, đến Phú Lộc, sau đó rẽ phải vào tỉnh lộ 42 là tới.</p><p>Tên gọi Ngã Năm xuất hiện khi người Pháp đào kênh quản lộ Phụng Hiệp. Kênh này cùng kênh Xáng cắt ngang kênh Xẻo Chính tạo thành năm nhánh sông đổ về 5 ngã: Cà Mau, Vĩnh Quới, Long Mỹ, Thạnh Trị, Phụng Hiệp.</p><p>Chợ nổi Ngã Năm thường họp chợ khá sớm từ và kéo dài đến 8 giờ thì tan dần. Đông đúc nhất thường từ 5h đến 6h với cảnh hàng trăm ghe thuyền tụ họp, huyên náo cả bến sông. Đây thời gian lý tưởng nhất để trải nghiệm chợ nổi. Vào dịp gần tết nguyên đán, chợ nổi Ngã Năm hầu như họp từ sáng đến tối khiến không khí càng tấp nập hơn.</p><p>Chủng loại hàng hóa của chợ nổi Ngã Năm rất phong phú và đa đạng, từ các loại gạo ngon nổi tiếng của vựa lúa lớn trong khu vực cho đến các loại rau, củ quả miệt vườn; từ các mặt hàng nông sản, hải sản cho đến các vật dụng sinh hoạt, gia dụng hàng ngày,… Để giúp cho việc truyền tải thông tin dễ dàng giữa bên bán và bên mua, cây Bẹo chính là phương tiện quảng cáo hữu hiệu của loại hình chợ nổi.</p><p>Dụng cụ này thường được làm từ loại tre tầm vong già, uốn thẳng, dài khoảng 4-5 m, góc vạt nhọn cho dễ cắm và kìm ghe khi đậu, ngọn thì đục lỗ có thể xiên dây qua để treo hàng hóa. Người mua chỉ cần đứng từ xa, nhìn vào những cây Bẹo để quan sát và tìm loại hàng muốn mua.</p>', 0, 4, 11, '2024-12-20 07:58:07', '2024-12-20 07:58:07'),
(31, 'Vườn cò Tân Long', 'Ấp Tân Bình, xã Long Bình, huyện Ngã Năm, tỉnh Sóc Trăng.', 'Miễn phí', '<p>Vườn Tân Long nằm ở thị xã Ngã Năm, cách trung tâm tỉnh Sóc Trăng khoảng 60 km. Nơi đây được mệnh danh là khu bảo tồn của loài cò vì sở hữu điều kiện tự nhiên vô cùng thuận lợi cho sự sinh sống và phát triển của nhiều loài động thực vật, nhất là các loài chim, cò. Hơn thế nữa, vườn cò cũng là địa điểm du lịch Sóc Trăng được khá nhiều bạn trẻ yêu thích vì khi đến đây tham quan, bạn sẽ có cảm giác đang hòa mình vào không gian bao la, thiên nhiên rộng lớn.</p><p>Sau những chuyến check in chợ nổi Ngã Năm hay chùa Chén Kiểu, Bảo tàng Khmer,... bạn có thể đến vườn cò để vừa thư giãn với không khí trong lành, mát mẽ vừa được ngắm nhìn từng đàn cò trắng muốt bay lượn trên bầu trời xanh ngắt của miền sông nước. Đây hứa hẹn sẽ là một trải nghiệm khó quên cho du khách.</p><p>Nếu xuất phát từ thị trấn Ngã Năm, thuộc huyện Ngã Năm, tỉnh Sóc Trăng, du khách hãy đi dọc theo đường tỉnh lộ 42 khoảng 5km là tới được vườn cò nổi tiếng của tỉnh Sóc Trăng rồi đấy. Ngoài ra song song với đường bộ dẫn đến vườn cò còn có một dòng kênh uốn lượn theo tỉnh lộ 42 tuy nhỏ xinh nhưng cũng chuyên chở nặng phù sa đáng kể nuôi dưỡng ruộng vườn xung quanh và quanh năm tỏa hơi nước mát rượi. Có thể nói rằng vườn cò có vị trì khá thuận lợi để du khách đến tham quan, cả bằng đường thủy cũng như đường bộ.</p>', 0, 1, 11, '2024-12-20 07:59:16', '2024-12-20 07:59:16'),
(32, 'Chùa La Hán', 'Xóm Cầu Đen, phường 8, thành phố Sóc Trăng', 'Miễn phí', '<p>Theo lời kể của những người cao tuổi ở địa phương và các ghi chép còn lưu lại, chùa La Hán được xây dựng từ năm 1952 do người Hoa vùng Triều Châu quản lý. Ban đầu, nơi đây chỉ là một gian nhà tranh đơn sơ với vách ván để thờ phụng các chư Phật, trong đó nổi bật nhất là hình ảnh của 18 vị La Hán. Cũng vì lẽ đó mà dần về sau, ngôi chùa thường được người dân trong vùng gọi theo các tượng Phật nên mới có tên như ngày nay. Lúc bấy giờ, đây là chốn tu tập của Phật tử và là địa điểm để bà con quanh xóm cầu nguyện cho mưa thuận gió hòa, làm ăn thuận lợi.</p><p>Khoảng 4 năm sau, tức vào năm 1956, chùa La Hán bị tàn phá nặng nề vì một cơn bão quét qua. Sau đó, người dân địa phương đã góp công sức để xây dựng lại ngôi chùa bằng gỗ và gạch ngói. Đến năm 1990, chùa La Hán đã được xây cất hoàn thiện, trở nên khang trang và kiên cố hơn rất nhiều nhờ công sức của Phật tử và bà con khắp nơi đóng góp. Hiện tại, ngôi chùa có thiết kế gồm một tầng trệt, một tầng lầu cùng với khuôn viên rộng lớn và xinh đẹp.</p><p>Chùa có khuôn viên rộng rãi với nhiều thiết kế độc đáo, trong đó ấn tượng nhất là hình long, lân, quy, phụng được bên cạnh ngọn núi Phổ Đà nhân tạo. Phần sân trước của chùa La Hán thờ tượng Phước Đức Lão Ông và Phật Bà Quan Âm. Ngoài ra, trong khuôn viên còn có vô số tiểu cảnh thiên nhiên làm tăng thêm nét thơ mộng cho ngôi cổ tự như ao sen, hồ rùa, đình miếu... Bên cạnh đó, các vật trang trí như đèn bát bửu, ngọc kỳ lân, tượng tạc hình rồng bay phượng múa cũng góp phần tô điểm cho cảnh quan tuyệt đẹp nơi đây.</p><p>Không chỉ có vậy, chùa La Hán còn mang điểm nhấn cực kỳ đặc biệt ở cách thiết kế các bức tường. Hầu hết những bức tường bao quanh chùa không làm bằng gỗ, bê tông và sơn màu vàng truyền thống mà lại xây nên từ đá tạo ấn tượng về sự vững chắc, bề thế. Thế nên nếu ngắm nhìn từ xa, ngôi chùa này trông giống hệt như một tòa lâu đài cổ tích xinh đẹp nằm giữa mảnh đất miền Tây thanh bình và trù phú.</p>', 0, 2, 11, '2024-12-20 08:00:33', '2024-12-20 08:00:33'),
(33, 'Cồn Quy', 'Huyện Châu Thành, tỉnh Bến Tre', 'Miễn phí', '<p>hù sa màu mỡ của những dòng sông trù phú ở miền Tây đã bồi đắp nên nhiều cồn đất rộng lớn giữa sông, người dân quen gọi là cù lao. Ở Bến Tre, nổi tiếng nhất phải kể đến tứ linh miệt vườn là Long - Lân - Quy - Phụng. Bên cạnh Cồn Phụng nổi tiếng nhất với cảnh quan thơ mộng thì Cồn Quy Bến Tre cũng sở hữu sức hấp dẫn riêng, khung cảnh hoang sơ nhưng rất thanh bình. Trên cồn là những vườn cây ăn quả lâu năm, không gian xanh mướt và bầu không khí trong lành.</p><p>Ban đầu, Cồn Quy Bến Tre chỉ là một doi đất nhỏ bên bờ sông hiền hòa, hoang vắng và được bao phủ bởi những cây bụi rậm rạp. Sau thời gian dài, đất đai được mở rộng hơn. Khoảng những năm 1950 đến 1960, người dân Bến Tre bắt đầu đến đây sinh sống, lập nghiệp, khai khẩn đất hoang.</p><p>Ngày nay, khi bạn chèo thuyền về phía đầu cồn, hướng thượng lưu sông Tiền thì sẽ gặp dấu tích ngôi miếu Bà Chúa Xứ do những tiền nhân đầu tiên đến Cồn Quy khai hoang lập làng đã dựng nên. Ngoài ra, giữa cồn là một nhà thờ Tin Lành để phục vụ nhu cầu tín ngưỡng, tâm linh của người dân. Khoảng cuối thế kỷ XX đến nay, hạ tầng Cồn Quy Bến Tre đã được hoàn thiện và đầu tư để nâng cao cuộc sống cho người dân và làm tiền đề phát triển du lịch.</p><p>Cồn Quy Bến Tre sở hữu vẻ đẹp hoang sơ, thanh bình và tự nhiên. Vì khu vực này gần như hoàn toàn tách biệt với đất liền nên không chịu nhiều tác động từ con người. Dù hiện nay tỉnh Bến Tre đã đầu tư xây dựng khu du lịch Cồn Quy nhưng số lượng người đến đây vẫn ít hơn Cồn Phụng hay Cồn Thới Sơn. Nhờ vậy mà khung cảnh giữ được vẻ đẹp tự nhiên vốn có.</p>', 0, 1, 3, '2024-12-20 08:01:46', '2024-12-20 08:01:46'),
(34, 'Cồn Phụng', 'Xã Tân Thạch, huyện Châu Thành, tỉnh Bến Tre', 'Miễn phí', '<p>Được thiên nhiên ưu ái ban tặng cho vị trí cực kỳ thuận lợi, thế nên bạn có thể ghé khu du lịch Cồn Phụng vào bất kỳ thời gian nào trong năm. Tuy nhiên tốt nhất là bạn nên đến đây vào dịp hè, tầm tháng 6 - 7 - 8 mỗi năm. Lúc này cũng đang vào mùa trái cây với nhiều loại quả hấp dẫn như: sầu riêng, chôm chôm, măng cụt,...</p><p>Đến KDL Cồn Phụng và trải nghiệm nhiều hoạt động thú vị</p><p>Khu di tích Đạo Dừa chắc chắn là địa điểm bạn sẽ muốn ghé thăm đầu tiên. Nơi đây có diện tích 1.500m2, hiện lưu giữ nhiều giá trị văn hoá tín ngưỡng của người dân địa phương. Dù đã trải qua 50 năm xây dựng nhưng khu di tích vẫn giữ nguyên được nét đẹp của mình. Một trong những kiến trúc độc đáo tại đây chính là khu vực 9 trụ cột được điêu khắc với 9 con rồng cực kỳ uy nghiêm.</p><p>Tại Cồn Phụng hiện nay vẫn còn tồn tại một nghề truyền thống đó chính là nuôi ong lấy mật. Đến đây bạn sẽ không khó để ghé thăm một gia đình đang làm nghề nuôi ong, các loại ong tại đây phần lớn là lấy mật từ hoa nhãn, vị mật ong rất ngon mà lại thơm nữa. Bạn có thể mua mật ong về làm quà tặng người thân nữa đó.</p><p>Nếu bạn đang có ý định dạo quanh một vòng để khám phá toàn bộ khu du lịch Cồn Phụng thì xe ngựa chính là phương tiện không thể bỏ qua. Du ngoạn bằng xe ngựa cực kỳ thú vị luôn đấy, vừa dễ dàng ngắm nhìn khung cảnh thiên nhiên tươi đẹp, vừa cảm nhận được dễ dàng sự yên bình của miền sông nước. Còn nếu muốn đi sâu khám phá các con rạch nhỏ trong Cồn Phụng thì xuồng ba lá sẽ là lựa chọn tuyệt vời.</p>', 0, 1, 3, '2024-12-20 08:02:48', '2024-12-20 08:02:48'),
(35, 'Biển Bình Đại', 'Xã Thới Thuận, huyện Bình Đại, tỉnh Bến Tre', 'Miễn phí', '<p>Biển Bình Đại&nbsp;là bãi biển nổi tiếng tại Bến Tre thu hút nhiều du khách trong và ngoài tỉnh đến du ngoạn. Tuy không nổi tiếng như biển Vũng Tàu, Nha Trang hay Hà Tiên. Nhưng&nbsp;Biển Bình Đại&nbsp;lại mang đến nét đặc trưng khó tả của một bãi biển miền Tây.</p><p>Đi dạo bờ biển là một hoạt động nhẹ nhàng mà mỗi du khách khi đến chơi biển đều yêu thich. Đơn giản chỉ là đạp chân không lên nền cát đen đặc trưng của vùng biển miền Tây. Cát đen không phải cát dơ mà là tượng trưng cho phù sa bồi đắp của miệt đồng bằng. Đi dạo trên bờ biển Bình Đại ngắm bình minh là điều tuyệt vời nhất bởi bờ biển này hướng về phía đông. Cứ mỗi sớm mai những tia nắng ló dạng sau rạng dừa lại yên bình đến lạ.</p><p>Tắm biển Bến Tre tuy không phải hoạt động sôi nổi nhưng lại là niềm vui của bọn trẻ. Bãi cát đục phù sa nhưng nước biển lại trong vắt. Khi sóng nước gợn lăn tăn lại là điều tuyệt vời cho những cuộc vui tắm biển trong ngày hè. Các hoạt động giải trí trên cát như đánh bóng chuyền, bóng đá hay thậm chí là thả diều đều được yêu thích.</p><p>Biển Bình Đại Bến Tre cũng giống như những vùng biển miền Tây khác. Hoạt động trên biển không sôi nổi nhưng lại nổi danh với các món hải sản tươi ngon và phong phú nơi đây. Các món hải sản nổi tiếng tại bãi biển Bến Tre phải kể đến là cua, nghẹ, tôm và nghêu. Những món này được chế biển theo công thức đặc trưng của vùng. Vậy nên món ăn càng trở nên ngon miệng và hấp dẫn hơn.</p>', 0, 3, 3, '2024-12-20 08:04:00', '2024-12-20 08:04:00'),
(36, 'Làng nghề bánh tráng Mỹ Lồng', 'Xã Mỹ Thạnh, huyện Giồng Trôm, tỉnh Bến Tre', 'Miễn phí', '<p>Làng Mỹ Lung xưa, nay gọi là Mỹ Lồng, thuộc xã Mỹ Thạnh, huyện Giồng Trôm, từ lâu đã nổi tiếng với nghề bánh tráng truyền thống. Làng nghề Mỹ Lồng được hình thành từ khi nào chẳng mấy ai nhớ rõ, nhưng theo các cụ cao niên trong làng, nghề làm bánh tráng đã tồn tại cách nay khoảng 100 năm. Lại có giả thuyết cho rằng, thuở khai hoang lập ấp, để ứng phó với quân của chúa Trịnh nên quân của chúa Nguyễn yêu cầu dân Mỹ Lung tập trung gạo và sức dân để tráng bánh làm lương khô cho quân đội dự trữ chiến đấu lâu dài. Vì thế mà hình thành làng nghề bánh tráng lưu truyền đến nay.</p><p>Chỉ từ bột gạo hòa quyện nước cốt dừa, đường, muối, mè, sữa, trứng… người dân Mỹ Lồng đã sáng tạo nên những chiếc bánh tráng thơm ngon, nhiều hương vị. Điểm khác biệt rõ rệt nhất của bánh tráng Mỹ Lồng với những nơi khác là bánh tráng Mỹ Lồng được làm từ gạo dẻo và nước cốt dừa béo ngậy của xứ sở quê hương. Gạo để tráng bánh phải là loại gạo ngon, thơm vừa, không quá khô, được vo kỹ và xay nhuyễn thành bột nước. Dừa phải chọn những trái già, cùi dày, nạo lấy nước cốt đặc và sánh.</p><p>Pha bột tráng bánh thường là những người có nhiều kinh nghiệm, bột pha đúng và đủ thì bánh không bị dính khuôn, dễ dàng trong việc lật trở khi phơi khô. Người tráng bánh lành nghề cho ra thành phẩm là những chiếc bánh tròn, đều và đẹp mắt. Bánh tráng xong được đặt trên những tấm phên làm từ lá dừa để phơi. Có tận mắt chứng kiến từ lúc pha bột, tráng bánh, phơi bánh… mới thấy chiếc bánh tráng Mỹ Lồng được tạo ra từ sự khéo léo, kì công và rất tâm huyết của người dân làng nghề.</p><p>Nếu trước đây, Mỹ Lồng nổi danh với bánh tráng mè truyền thống thì ngày nay, nhằm hội nhập với xu thế, chiếc bánh có nhiều chủng loại để du khách lựa chọn như: bánh tráng sữa trứng gà, bánh tráng mặn, bánh tráng gừng…</p>', 0, 5, 3, '2024-12-20 08:05:28', '2024-12-20 08:05:28'),
(37, 'Hồ Soài So', 'Xã Núi Tô, huyện Tri Tôn, tỉnh An Giang', 'Miễn phí', '<p>Với diện tích rộng khoảng 5ha, chứa gần 400 nghìn mét khối nước, hồ Soài So là hồ nhân tạo lớn nhất tỉnh An Giang. Vốn dĩ chỉ là hồ chứa nước ngọt phục vụ tưới tiêu, tuy nhiên với vị thế cũng như những cảnh quan thiên nhiên tuyệt đẹp mà nó sở hữu, hồ Soài So đã trở thành điểm check-in nổi tiếng của những người mê xê dịch.</p><p>Nếu bạn là tín đồ của du lịch trải nghiệm, mê sống ảo thì đây chính là địa điểm bạn không nên bỏ lỡ khi du lịch An Giang. Cung đường dẫn đến hồ tuyệt đẹp chắc chắn sẽ khiến bạn mãn nhãn, với phía trước là núi, bên phải là hồ, bên trái là cánh đồng lúa vàng.</p><p>Thời điểm tuyệt vời để ghé thăm hồ Soài So là từ tháng 9-11 hàng năm. Đây là mùa nước nổi ở miền Tây, mực nước dâng cao hơn và vì đó hồ cũng trong xanh hơn.</p><p>Sở hữu khí hậu mát mẻ, trong lành cùng phong cảnh hữu tĩnh, hồ Soài So là lựa chọn thích hợp cho những ngày nghỉ, cho những ai muốn rời xa sự ồn ào nơi đô thành để tìm về sự bình yên, thư giãn. Đặc biệt, vào buổi sáng sớm, hồ Soài So còn mang vẻ đẹp mờ ảo hơn khi những tia nắng đầu ngày bắt đầu chiếu rọi khắp núi non và làm tan đi lớp sương sớm còn đọng lại từ đêm qua.</p><p>Trên đường đến Hồ Soài So, ngay từ xa bạn đã có thể nghe thấy tiếng nước chảy róc rách và dòng nước suối Bác từ từ đổ xuống hồ. Càng lại gần, tiếng nước chảy sẽ càng lớn hơn, cùng với đó mở ra trước mắt bạn khung cảnh thiên nhiên bao la, rộng lớn và núi non hùng vĩ trùng điệp. Nước hồ Soài So trong veo, mặt hồ êm đềm, phẳng lặng, những cơn gió thổi đến khiến vài cơn sóng gợn lăn tăn.</p><p>Bốn bề Hồ Soài So lộng gió, cây cối xanh tươi, những tán cây phủ bóng râm để bạn có thể tha hồ nghỉ ngơi, ngắm cảnh. Từ bờ hồ, bạn sẽ được ngắm nhìn ngọn Núi Cô Tô (Phụng Hoàng Sơn) sừng sững, đỉnh núi như chạm đến bầu trời. Khung cảnh tại đây khiến chúng ta liên tưởng đến chốn bồng lai tiên cảnh bởi sự thơ mộng và bình yên.</p>', 0, 1, 7, '2024-12-20 08:06:57', '2024-12-20 08:06:57'),
(38, 'Rừng tràm Trà Sư', 'Huyện Tịnh Biên, tỉnh An Giang.', 'Dao động khoảng 120.000 – 150.000 VND/ người.', '<p>Rừng Tràm Trà Sư là địa điểm du lịch lý tưởng cho những ai tìm kiếm một nơi thư giãn, yên tĩnh với thiên nhiên nhưng không nhàm chán, tẻ nhạt. Đặc biệt nơi đây khá gần với Sài Gòn, rất phù hợp với những nhóm bạn dự định du lịch ngắn ngày vì sắp phải lao đầu vào năm học mới hoặc số ngày phép của bạn chỉ còn “dưới 2 con số”.</p><p>Xuyên suốt chuyến đi, các bạn có thể ngắm cảnh, thoải mái ngồi ở đầu xuồng để cảm nhận sự mát mẻ, thư thái, quan sát các loài chim muông (một số loài định cư, có thể thấy quanh năm nơi đây có thể kể đến: le le, cò, cồng cọc, bìm bịp...) và thủy sinh vật đa dạng nơi đây, trải nghiệm không gian rừng ngập nước. Thậm chí các bạn còn có thể nhìn thấy rất nhiều ngôi làng của đồng bào Khmer gần đó, với nhiều làng nghề độc đáo như nuôi ong mật, nấu đường thốt nốt, thổ cẩm và các làng thủ công mỹ nghệ. Tổng chi phí tham quan tại đài quan sát và cả ăn uống sẽ dao động khoảng 120.000 – 150.000 VND/ người.</p><p>Rừng ràm Trà Sư đẹp nhất chính là vào mùa nước nổi, tương ứng với khoảng thời gian từ tháng 9 đến tháng 11. Vào mùa này, dường như tràm cũng đặc biệt xanh hơn, nước về với các cánh bèo cám phủ xanh bề mặt, khi đi thuyền bạn sẽ cảm giác như đang lướt qua một thảm nhung vô cùng êm nhẹ và cực kỳ thích thú.</p><p>Phía dưới lớp bèo cám ấy là vô số tôm cá, vì nước về đã khiến sự đa dạng thủy sinh vật nơi đây tăng lên đáng kể. Và chính điều đó cũng thu hút các loài chim về đây đông hơn. Tuy nhiên, nếu các bạn không thấy chúng “ồ ạt” thì cũng đừng thắc mắc, vì thường chúng sẽ làm ổ và “núp mình” trong các vòm tràm, chứ không phải lúc nào cũng “trình diện” với các bạn đâu. Nhưng, các bạn vẫn có thể nghe thấy tiếng chúng gọi bầy, tiếng rù rì từ trong rừng tràm vọng đến, cũng rất thú vị và cực kỳ thư giãn đấy nhé!</p>', 0, 1, 7, '2024-12-20 08:08:24', '2024-12-20 08:08:24'),
(39, 'Chùa Tà Pạ', 'Xã Núi Tô, Huyện Tri Tôn, Tỉnh An Giang', 'Miễn phí', '<p>Chùa Tà Pạ, người dân nơi đây còn gọi là Chùa Núi (Chùa Chưn-Num theo tiếng Khmer) thuộc xã Núi Tô – huyện Tri Tôn Điểm du lịch tâm linh nổi tiếng của xứ An Giang. Chùa Tà Pạ được xây dựng trên ngọn đồi Tà Pạ, nằm ở độ cao 45 mét so với mặt đất, được bao quanh bởi rừng cây nên bầu không khí rất trong lành, thoáng đảng khiến cho du khách đến đây có cảm giác thư giãn và bình yên đến vô cùng. Nếu bạn nào đang tìm cho mình một chốn vừa yên tĩnh vừa có cảnh đẹp thì chùa Tà Pạ là điểm đến lý tưởng.</p><p>Chùa không được xây trên nền đất bằng phẳng mà được xây trên những cột chống đỡ vững chắc cao hàng chục mét, nên khi nhìn từ xa ngôi chùa như đang lơ lửng giữa không trung, nổi bật giữa một vùng rừng núi hoang sơ.</p><p>Để khám phá ngôi chùa này, bạn sẽ phải đi bộ lên con đường cổng chùa, đẹp hút hồn với không gian thoáng mát và lối đi dốc đẹp ấn tượng.</p><p>Ngôi chùa theo Phật giáo Nam Tông có kiến trúc Khmer đặc trưng. Công trình đồ sộ uy nghi, được trạm trổ điêu khắc tinh xảo, đắp nối nhiều tranh tượng phù điêu hình chim thần Garuda, rắn thần Naga, tượng Cây No…. mang tính nghệ thuật cao.</p><p>Trên tất cả các bức tường hay khắp các cột kèo, cánh cửa đều được các nghệ nhân Khmer điêu khắc và trang trí bằng những hình ảnh được lấy cảm hứng chủ yếu từ cuộc đời của đức Phật và đời sống cộng đồng người Khmer tạo nên nét độc đáo rất riêng cho ngôi chùa.</p><p>Khi du lịch An Giang, ngoài việc ghé thăm ngôi chùa Chưi Num, bạn đừng bỏ qua hồ Tạ Pạ ở gần đó. Hồ nằm bên cạnh ngôi chùa, tựa như “Tuyệt Tình Cốc” phiên bản miền Tây. Hai bên hồ được bao quanh bởi các thành đá cao và sừng sững, nước trong vắt đến tận đáy.</p>', 0, 2, 7, '2024-12-20 08:09:37', '2024-12-20 08:09:37'),
(40, 'Quần đảo Nam Du', 'Xã An Sơn, huyện Kiên Hải, tỉnh Kiên Giang', 'Miễn phí', '<p>Thời điểm đẹp nhất để du lịch đảo Nam Du là từ tháng 12 đến tháng 3. Vào khoảng thời gian này biển khá êm và trong xanh. Do vậy những bạn bị say sóng cũng sẽ giảm được nhiều khó chịu khi di chuyển bằng tàu.</p><p>Các vùng biển của Kiên Giang không chịu nhiều ảnh hưởng trực tiếp của bão, nhưng lượng mưa do bão gây ra chiếm tỉ trọng khá lớn. Mùa mưa tại đây thường bắt đầu từ tháng 4 – 11 hàng năm. Nếu bạn không muốn những cơn mưa làm ảnh hưởng đến chuyến đi của mình bạn có thể xem trước tình hình thời tiết khi đi nhé.</p><p>Ở hòn Lớn, du khách thuê xe máy chạy quanh con đường ven đảo. Một bên đường là vách đá, một bên là biển. Du khách còn có thể lên ngọn hải đăng ở độ cao 296 m so với mực nước biển để tham quan đài radar và ngắm toàn cảnh Nam Du. Trên đảo còn có Miếu bà Chúa Xứ.</p><p>Từ hòn Lớn, du khách đi thuyền khoảng 30 phút để tới hòn Ngang, nơi có đông cư dân sinh sống nhất Nam Du, khoảng 900 hộ. Người dân chủ yếu sống bằng nghề đánh bắt hải sản và nuôi cá mú, cá bớp trong lồng bè. Hòn Ngang cũng là nơi có cảng biển lớn nhất Nam Du. Du khách không nên bỏ lỡ cơ hội thuê ghe xuồng ra biển tham quan các lồng bè nuôi cá, đi bộ quanh làng chài để tìm hiểu đời sống của ngư dân, thưởng thức các loại hải sản tươi ngon. Buổi đêm, khung cảnh từ hòn Ngang nhìn sang hòn Lớn rất đẹp.</p><p>Hòn Mấu rộng khoảng 200 ha với hơn 120 hộ dân nằm liền nhau vắt ngang qua phần thấp nhất của đảo. Hầu hết người dân trên đảo này đều làm nghề biển. Ðảo nhỏ nên vừa đặt chân lên tới đây, người dân trên đảo đều biết bạn là người khác đến đảo này. Trong số 21 hòn đảo của Nam Du, riêng Hòn Mấu sở hữu nhiều bãi biển đẹp nhất. Đảo có 5 bãi biển, trong đó hai bãi cát trắng mịn là bãi Chướng và bãi Nam, còn lại là ba bãi đá gồm bãi Bắc, bãi Ðá Ðen và bãi Ðá Trắng. Bãi Nam là mặt tiền của đảo, nên tàu bè đều dừng ở đây.</p>', 0, 1, 8, '2024-12-20 08:11:10', '2024-12-20 08:15:53'),
(41, 'Hòn Sơn', 'Xã Lại Sơn, huyện Kiên Hải, tỉnh Kiên Giang', 'Miễn phí', '<p>Hòn Sơn thuộc vịnh Hà Tiên, cách Rạch Giá 65km, nằm giữa đảo Nam Du và đảo Hòn Tre. Hòn Sơn còn có tên gọi là đảo Rái Cá bởi ngày trước nơi này mọc rất nhiều cây dầu rái, nhựa của chúng dùng để quét lên vỏ thuyền, tránh bị nước biển ăn mòn. Cũng có những ý kiến cho rằng cái tên này bắt nguồn từ việc có nhiều rái cá đến sinh sống trên đảo. Khi Nguyễn Ánh chạy trốn quân Tây Sơn đến đây vào năm 1777, có một con rái cá đã dâng hải sản đến cho ông, nên ông đã đặt tên nơi này là Hòn Sơn Rái.</p><p>Hòn Sơn có diện tích 11,5 km2, bao bọc bởi 6 bãi biển tuyệt đẹp. Điểm địa này đã trở thành sự lựa chọn lý tưởng cho nhiều du khách khi ghé thăm Kiên Giang.</p><p>Thời tiết ở đảo Hòn Sơn mát mẻ, dễ chịu quanh năm nên bạn có thể đến đây du lịch quanh năm. Tuy nhiên, theo kinh nghiệm đi Hòn Sơn của mình thì thời điểm lý tưởng nhất là từ tháng 5 đến tháng 12. Lúc này, biển Hòn Sơn rất đẹp, nước trong xanh, ít sóng, có nhiều hải sản tươi ngon để bạn thưởng thức.</p><p>Ngày 15/10 âm lịch hằng năm, trên đảo có tổ chức lễ hội Nghinh Ông rất sôi động. Bạn có thể sắp xếp thời gian để du lịch Hòn Sơn vào thời điểm này.</p><p>Sở hữu nhiều bãi tắm tuyệt đẹp nên Du lịch Hòn Sơn (đảo Hòn Sơn) mà bỏ qua cơ hội hòa mình vào làn nước thì chẳng khác gì bạn đến đây và đi về tay không. Bãi Bàng, Bãi Xếp hay Bãi Thiên Tuế chính là những cái tên thường được nhiều tín đồ đam mê khám phá lựa chọn ghé đến. Làn nước biển xanh trong vắt, bờ cát trắng trải dài đem đến cho bạn những phút giây Du lịch Hòn Sơn (đảo Hòn Sơn) tuyệt vời. Đến với nơi đây, sẽ càng tuyệt vời hơn nếu bạn có thể cùng bạn bè, người thân thưởng thức Đặc sản Hòn Sơn bên bờ biển thơ mộng.</p>', 0, 1, 8, '2024-12-20 08:12:38', '2024-12-20 08:12:38'),
(42, 'Quần đảo Bà Lụa', 'Xã Sơn Hải, huyện Kiên Lương, tỉnh Kiên Giang.', 'Miễn phí', '<p>Quần đảo Bà Lụa thuộc vùng biển Kiên Giang, nằm trên địa phận của huyện Kiên Lương. Cái tên “Bà Lụa” được xuất phát từ tên của một vị tướng đã thành lập nên xưởng dệt lụa ở trên hòn đảo này nhằm phục vụ cho nghĩa quân Nguyễn Trung Trực. Với 40 hòn đảo lớn nhỏ nhưng chỉ có khoảng 10 hòn đảo có cư dân sinh sống, đây là vùng biển dịu êm, không có sóng to, sở hữu cảnh quan tuyệt đẹp, không khí trong lành, rất thích hợp để du lịch quanh năm.</p><p>Du khách nên đến với quần đảo Bà Lụa vào khoảng đầu tháng 9 đến cuối tháng 3 âm lịch hằng năm. Giai đoạn lý tưởng nhất là từ tháng 11 đến tháng 1 – lúc này thời tiết nắng đẹp, ít có mưa, việc di chuyển ra đảo hay các trải nghiệm du lịch cũng thuận lợi hơn.</p><p>Trong số trên 40 đảo của quần đảo Bà Lụa chỉ có 10 đảo có cư dân sinh sống. Những hòn đảo do dân bản địa đặt tên tuỳ theo hình dạng. Cùng với những truyền thuyết, giai thoại như: Hòn Heo, Hòn Dê, Hòn Ngang, Hòn Đước… Khu vực biển xung quanh quần đảo Bà Lụa là biển nông, nhiều nơi nước ròng có thể đi được từ đảo này sang đảo khác, nước ngập không quá lưng người lớn.</p><p>Do quần đảo Bà Lụa có rất nhiều đảo nhỏ khác. Bạn có thể trải nghiệm tham quan tại Ba Hòn Đầm (Hòn Đước, hòn Đàm Dương, hòn Giếng). Đây là những hòn đảo đẹp được nhiều du khách lựa chọn nhất. Khoảng cách giữa các đảo lại không ra, nước rất nông nên bạn có thể bơi từ đảo này qua đảo khác mà không cần thuyền.</p>', 0, 1, 8, '2024-12-20 08:15:39', '2024-12-20 08:15:39'),
(43, 'Vườn quốc gia U Minh Thượng', 'Xã An Minh Bắc, huyện U Minh Thượng, tỉnh Kiên Giang', '10.000 VNĐ/người (Giá vé có thể thay đổi tùy thời điểm)', '<p>Năm 2006, vườn được xác nhận là một trong 3 khu vực quan trọng của Khu dự trữ sinh quyển thế giới ở vùng ven biển và biển Kiên Giang. Đây là nơi đầu tiên trên đất than bùn trong khu vực trở thành Vườn Di sản ASEAN thứ 5 của Việt Nam vào năm 2012. Đến năm 2015, nơi này được công nhận là khu Ramsar thứ 2.228 trên thế giới và thứ 8 tại Việt Nam.</p><p>Mùa nước nổi từ tháng 8 đến tháng 11 là mùa đẹp nhất tại U Minh Thượng. Du khách đến vào thời điểm này không ai không mê mẩn khi đắm mình giữa mênh mông xanh thẳm của rừng tràm và nước.</p><p>Khi ngôi trên chiếc vỏ lãi nhẹ nhàng trôi, bạn sẽ có cơ hội khám phá những điểm độc đáo như Máng Dơi, Trảng Dơi, Trảng Chim. Đây đều là những nơi tập trung nhiều loại chim quý hiếm có nguy cơ tuyệt chủng.</p><p>U Minh Thượng sở hữu diện tích rừng ngập mặn quý hiếm. Đến đây, bạn dễ dàng bắt gặp cây tràm và dây leo mọc trên lớp than bùn, cùng hơn 180 loài chim và 30 loài thú. Chính điều này kỳ diệu này tạo nên hệ sinh thái đa dạng, phong phú, giúp U Minh Thượng trở thành điểm đến hấp dẫn đối với những người yêu thiên nhiên.</p><p>Du khách ngồi trên vỏ lãi lênh đênh trên những con kênh trải dài, len lỏi vào tận sâu khu bảo tồn mới cảm nhận hết vẻ đẹp tuyệt tác mà tạo hóa ban tặng cho thiên nhiên nơi đây. Màu đỏ đục hiếm thấy của những con kênh trong rừng đầm lầy hòa quyện với màu xanh tươi của rừng tràm hai bên bờ, cùng với cánh lục bình dày đặc trôi theo dòng nước.</p>', 0, 1, 8, '2024-12-20 08:17:21', '2024-12-20 08:17:21'),
(44, 'Nhà công tử Bạc Liêu', 'Số 13 Điện Biên Phủ, phường 3, TP Bạc Liêu', 'Miễn phí', '<p>Nhà Công tử Bạc Liêu&nbsp;hiện tọa lạc tại số 13 Điện Biên Phủ, phường 3, TP Bạc Liêu, nằm cạnh bờ sông Bạc Liêu. Ngôi nhà mang kiến trúc phương Tây sang trọng, được xây dựng từ năm 1917 đến năm 1919 thì hoàn thành. Ngôi nhà sở hữu kiến trúc bề thế nhất lục tỉnh miền Tây thời điểm lúc đó nên được người dân nơi đây gọi với cái tên “nhà lớn”.</p><p>Dinh thự do ông Trần Trinh Trạch, tức Hội đồng Trạch, cha Công tử Bạc Liêu xây khi công tử mới 19 tuổi. Ông Trần Trinh Trạch là chủ sở hữu của 74 sở điền, với 110.000 ha đất trồng lúa, gần 100.000 ha ruộng muối. Khi đó toàn tỉnh Bạc Liêu lúc bấy giờ có 13 lô ruộng muối thì 11 lô là của ông. Ông Trạch có 7 người con, 4 gái, 3 trai. Trong 3 người con trai, Trần Trinh Huy ăn chơi khét tiếng và nổi tiếng mê gái. Được biết, tổng số tài sản mà công tử Bạc Liêu được thừa hưởng và “tiêu hao” vào ăn chơi xa xỉ ước tính lên tới trên 5 tấn vàng.</p><p>Ngôi biệt thự do kĩ sư người Pháp thiết kế, hầu hết vật liệu xây dựng được mang từ Paris về. Nhiều chi tiết, vật liệu, đồ nội thất trong nhà được nhập khẩu từ Pháp, từ các bù long, ốc vít cho đến các chi tiết xây dựng đều có đóng dấu chìm mẫu tự P thể hiện xuất xứ.</p><p>Ngay khi bước chân vào ngôi nhà, du khách sẽ bị cuốn hút bởi những đường nét thiết kế tỉ mỉ, tinh tế, toát lên vẻ sang trọng và hào hoa. Những chiếc đèn màu vàng tỏa ánh sáng lung linh tạo cảm giác ấm cúng và lịch lãm. Trên mỗi cây cột của ngôi nhà đều được trang trí nhiều hoa văn đẹp mắt.</p><p>Tầng một (tầng trệt) của dinh thự gồm 2 phòng ngủ, phòng khách cùng hai đại sảnh rộng cùng với cầu thang lớn dẫn lên lầu. Trên lầu cũng có 2 phòng ngủ và hai đại sảnh rộng, thoáng, hút nắng, gió, khiến cho dinh thự luôn thông thoáng, mát mẻ.</p>', 0, 4, 12, '2024-12-20 08:21:01', '2024-12-20 08:21:01'),
(45, 'Cánh đồng điện gió Bạc Liêu', 'Ấp Biển Đông A, xã Vĩnh Trạch Đông, thành phố Bạc Liêu', 'Miễn phí', '<p>Nhà máy điện gió Bạc Liêu được khởi công từ năm 2010 và đưa vào hoạt động từ tháng 6 năm 2013. Hiện nay, cánh đồng điện gió Bạc Liêu được xem là nhà máy cung cấp phong năng lớn nhất Việt Nam lẫn toàn khu vực Đông Nam Á. Nơi đây có hơn 133 cột tháp và tuabin có công suất mạnh mẽ từ 16-83 MW đứng sừng sững trên biển, toàn bộ khu vực này chiếm diện tích lên đến 1.300ha với tổng đầu tư lên đến hơn 5200 tỷ đồng.</p><p>Với quy mô cực kỳ ấn tượng, cánh đồng điện gió Bạc Liêu vừa đi đầu trong ngành công nghiệp năng lượng tái tạo của nước ta, vừa đem lại những đóng góp to lớn vào lưới điện quốc gia.</p><p>Ngoài những điểm ấn tượng trên, cánh đồng điện gió Bạc Liêu còn là điểm du lịch thu hút hàng nghìn du khách mỗi năm. Được công nhận là điểm du lịch tiêu biểu từ đầu năm 2019, nơi đây tận dụng sự tất thảy sự độc đáo của thiên nhiên tươi đẹp cùng công nghệ hiện đại.</p>', 0, 3, 12, '2024-12-20 08:22:43', '2024-12-20 08:22:43'),
(46, 'Chùa Ghositaram', 'Ấp Cù Lao, xã Hưng Hội, huyện Vĩnh Lợi, tỉnh Bạc Liêu', 'Miễn phí', '<p>Chùa Ghositaram tọa lạc tại ấp Cù Lao, xã Hưng Hội, huyện Vĩnh Lợi, tỉnh Bạc Liêu như một “bảo tàng mỹ thuật” thể hiện tài năng của các nghệ nhân Khmer. Chùa Ghositaram còn được gọi là Chùa Cù Lao được xây dựng vào năm 1860 trên khu đất rộng 4ha, phía trước cổng chùa có hàng thốt nốt cao vút, là hình ảnh quen thuộc của cảnh sắc miền Tây.</p><p>Chùa Ghositaram gồm có nhiều khu vực đặc trưng thường có của một ngôi chùa Khmer, như: chánh điện, tăng sá, giảng đường, bảo tháp, trường học, an sá… Theo thời gian, ngôi chùa dần bị hư hỏng, nên đến năm 2001 tòa chánh điện được xây dựng lại, và hoàn thiện vào năm 2010. Đây được coi là tòa chánh điện lớn nhất trong số các ngôi chùa ở Việt Nam với diện tích hơn 427 m2, cao hơn 36 m.</p><p>Toàn bộ công trình được xây dựng theo kiến trúc truyền thống của Phật giáo Nam tông Khmer cổ kính kết hợp hài hòa với kiến trúc hiện đại. Ngôi chùa Ghositaram rực rỡ, tráng lệ sẽ làm bạn ấn tượng ngay từ cái nhìn đầu tiên.</p><p>Những hoa văn, phù điêu trang trí mang đậm dấu ấn Angkor, từ họa tiết hình cánh sen với những đường cong dịu dàng, thanh thoát đến hình hoa thị mạnh mẽ, cân đối, luôn luôn hiện hữu trên từng ô cửa, hàng hiên.</p><p>Nhìn từ xa, tòa chánh điện to lớn hiện lên rực rỡ với tông màu đỏ – vàng đặc trưng của các ngôi chùa Khmer. Mái chùa được cấu trúc thành nhiều tầng, lớp chồng lên nhau, tạo ra khoảng không gian cao vút giữa trời xanh.</p><p>Bên ngoài và phía trong được trang trí với hàng trăm hình tượng khác nhau theo truyền thuyết Tam Tạng Kinh của Phật giáo. Khắp nơi trong chính điện đều được chạm trổ và đắp đường nét hoa văn có tính giá trị nghệ thuật cao, tạo thành một công trình văn hóa đậm đà bản sắc dân tộc.</p>', 0, 2, 12, '2024-12-20 08:24:12', '2024-12-20 08:24:12'),
(47, 'Cánh đồng muối', 'Huyện Hòa Bình và Đông Hải, Tp. Bạc Liêu.', 'Miễn phí', '<p>Bạc Liêu là một tỉnh ven biển của đồng bằng sông Cửu Long trên bán đảo Cà Mau, cực Nam của Việt Nam. Nơi đây được coi là thủ phủ muối khi là một trong những nơi có diện tích sản xuất muối lớn nhất cả nước, với 2 huyện nổi tiếng là Hòa Bình và Đông Hải. Với lịch sử hơn 100 năm hình thành và phát triển, người dân Bạc Liêu làm muối Bạc Liêu đã tích lũy được những kỹ năng thực tế và kế thừa nghề làm muối độc đáo có một không hai.</p><p>Muối Bạc Liêu từ lâu đã nổi tiếng khắp Nam Bộ bởi hương vị đậm đà, độc đáo và rất riêng. Không chỉ vậy, những cánh đồng muối rộng lớn được nhuộm một màu trắng tinh khôi tạo nên một cảnh quan tuyệt đẹp thu hút rất nhiều khách du lịch hàng năm. Nơi đây có không khí trong lành và vẻ đẹp nên thơ. Những vựa muối của Bạc Liêu thường được chia thành nhiều ô vuông nhỏ hình chữ nhật, thẳng tắp và rất ngay ngắn. Sau khi thu hoạch, muối được chất thành đống lớn. Khi có nắng, những đống muối này lấp lánh như những viên kim cương mọc lên giữa ruộng. Không chỉ có cảnh đẹp mà cảnh người dân Bạc Liêu của cánh đồng muối Bạc Liêu cần mẫn hái muối gợi lên vẻ đẹp bình dị nhưng cũng có sức quyến rũ bí ẩn.</p><p>Một chuyến tham quan cánh đồng muối Bạc Liêu cho phép du khách thuận tiện “sống ảo” và lưu lại những bức ảnh đẹp cùng bạn bè, người thân mà không phải trả phí tham quan. Thời điểm tốt nhất để cảm nhận hết vẻ đẹp của nơi này là vào sáng sớm hoặc lúc hoàng hôn. Vì lúc này ánh nắng không quá chói để có thể nhìn rõ cả cánh đồng và có được một bức ảnh lung linh. Mùa thu hoạch muối bắt đầu vào khoảng tháng 12, tức là mùa khô nhất là ở miền Tây, từ khoảng tháng 12 đến tháng 4 năm sau. Vào những mùa này, những cánh đồng muối trở nên tấp nập hơn, người dân Bạc Liêu lúc nào cũng tất bật thu hoạch muối.</p>', 0, 5, 12, '2024-12-20 08:25:47', '2024-12-20 08:25:47'),
(48, 'Mũi Cà Mau', 'Xã Đất Mũi, huyện Ngọc Hiển, thành phố Cà Mau', 'Miễn phí', '<p>Trước kia, khách tham quan muốn đến được Đất Mũi chủ yếu phải di chuyển bằng canô, tuy nhiên, từ khi thông xe tuyến đường Hồ Chí Minh đoạn từ Năm Căn đến Đất Mũi đã tạo điều kiện cho du khách đến đây một cách dễ dàng bằng đường bộ. Tuyến đường dài thẳng tắp nằm giữa những tán rừng ngập mặn xanh mướt, sẽ là một trải nghiệm thú vị cho du khách phương xa khi lần đầu đặt chân đến Đất Mũi Cà Mau.</p><p>Một trong những điểm đến, mà du khách không thể bỏ qua khi du lịch tại Đất Mũi là Công viên văn hóa du lịch Mũi Cà Mau, tọa lạc trong Khu dự trữ sinh quyển thế giới Mũi Cà Mau được UNESCO công nhận vào tháng 5/2009.</p><p>Nơi đây, được đặt cột mốc tọa độ quốc gia tại GPS0001 (cây số 0) là 1 trong 4 điểm cực đánh dấu chủ quyền thiêng liêng của lãnh thổ Việt Nam trên đất liền. Cực Bắc là cột cờ Lũng Cú (Hà Giang), cực Tây là xã Apa Chải (Mường Nhé, Điện Biên), cực Đông là Mũi Đôi (Vạn Ninh, Khánh Hòa) và cực Nam chính là cột mốc tọa độ quốc gia GPS0001 (Đất Mũi, Cà Mau).</p><p>Hình tượng con tàu tại Công viên văn hóa du lịch Mũi Cà Mau cũng là một trong những điểm nhấn thú vị, với hình tượng chiếc thuyền căng đầy gió luôn hướng ra biển khơi. Trên cánh buồm với dòng chữ “Mũi Cà Mau”, toạ độ: 8°37\'30\'\' vĩ độ bắc, 104°43\' kinh độ đông. Đây là địa điểm quen thuộc mà mỗi du khách đến với Đất Mũi đều không thể bỏ qua để chụp ảnh lưu niệm, ghi lại những khoảnh khắc đánh dấu chuyến hành trình đến với vùng cực Nam của Tổ quốc.</p><p>Cột mốc Đường Hồ Chí Minh - điểm cuối Cà Mau km 2436 là điểm đến du lịch đánh dấu “điểm cuối cùng” trên chuyến hành trình trải dài từ Pắc Bó - Cao Bằng (điểm đầu) đến Đất Mũi - Cà Mau (điểm cuối), đi qua 28 tỉnh, thành phố với chiều dài 3.183km. Với quy mô thích hợp và hình thức giản dị, du khách có thể ghé thăm cột mốc đường Hồ Chí Minh để ghi lại dấu ấn trên chuyến hành trình về thăm Đất Mũi.</p>', 0, 1, 13, '2024-12-20 08:26:59', '2024-12-20 08:26:59'),
(49, 'Đảo Hòn Khoai', 'Xã Tân Ân, huyện Ngọc Hiển, tỉnh Cà Mau.', 'Miễn phí', '<p>Nếu đi tàu từ Rạch Gốc (cửa ngõ của huyện Ngọc Hiển ra biển Đông), thì chỉ sau 3 giờ vượt biển, du khách đã có thể chiêm ngưỡng được Hòn Khoai – một trong những hòn đảo đẹp nhất miền cực nam của Tổ quốc.</p><p>Đảo Hòn Khoai gồm nhiều đảo nhỏ: Hòn Khoai, Hòn Tượng, Hòn Sao, Hòn Đồi Mồi, Hòn Đá Lẻ. Trong đó Hòn Khoai là đảo lớn nhất với diện tích khoảng 4km2 và cũng là hòn đảo cao nhất so mực nước biển là 318m. Xưa kia, địa danh này còn được gọi với nhiều cái tên khác nhau như: Hòn Giáng Hương, Hòn Độc Lập hay đảo Poulop vào thời Pháp. Tuy nhiên, bởi hình dạng giống như một củ khoai khổng lồ mà người địa phương vẫn quen gọi với cái tên là Hòn Khoai cho đến tận ngày nay.</p><p>Hòn Khoai là hòn đảo đá, đồi và rừng nguyên sinh còn gần như nguyên vẹn với nhiều loại gỗ quý cùng quần thể động thực vật phong phú, chính điều đó đã làm say lòng biết bao du khách. Theo nghiên cứu mới nhất hệ thực vật ở Hòn Khoai có hơn 1.400 loài gồm cây ăn trái, cây lấy gỗ, cây làm thuốc… Động vật cũng khá phong phú với các loài khỉ, gà rừng, trăn hoa, kỳ đà, sóc bụng trắng… và hơn 20 loài chim qúy.</p><p>Hòn Khoai được mệnh danh là đảo ngọc của đất mũi, rừng núi bao quanh, nước biển xanh trong hiền hòa và những di tích nhuốm màu thời gian. Nơi đây trở thành điểm đến hấp dẫn mà du khách không thể bỏ qua khi đến tỉnh Cà Mau. Tháng 9/2013, Cụm đảo Hòn Khoai được xác lập Kỷ lục cụm đảo gần xích đạo nhất.</p><p>Trên đảo có 2 bãi biển, gồm Bãi Lớn ở phía đông nam và Bãi Nhỏ ở phía bắc. Tham quan du lịch Hòn Khoai, tàu chở du khách sẽ ghé Bãi Nhỏ, từ đó đi thuyền con vào bờ khoảng 50m.</p>', 0, 1, 13, '2024-12-20 08:28:08', '2024-12-20 08:28:08'),
(50, 'Vườn quốc gia U Minh Hạ', 'Các xã Trần Hợi, Khánh Bình Tây Bắc thuộc huyện Trần Văn Thời', 'Miễn phí', '<p>Nằm trong hệ sinh thái rừng tràm nổi tiếng của đồng bằng sông Cửu Long, Vườn Quốc gia U Minh Hạ mang trong mình nét đặc trưng của vùng đất ngập nước, với những khu rừng tràm bạt ngàn, hệ động thực vật phong phú, và một lịch sử hình thành lâu đời. Nơi đây đã trở thành nguồn cảm hứng bất tận cho các nhà nghiên cứu khoa học, nhà sinh thái học, và là điểm đến không thể bỏ qua đối với những người yêu thiên nhiên.</p><p>Vườn Quốc gia U Minh Hạ thuộc địa phận của hai huyện Trần Văn Thời và U Minh, tỉnh Cà Mau, nằm cách thành phố Cà Mau khoảng 25 km về phía Tây. Khu vực này có diện tích hơn 8.500 ha, bao gồm nhiều dạng địa hình khác nhau từ rừng tràm, đồng cỏ ngập nước, đầm lầy, kênh rạch, và các dòng sông nhỏ.</p><p>Có lịch sử hình thành gắn liền với quá trình phát triển của vùng đất Cà Mau. Khu vực này từng là một phần của rừng U Minh rộng lớn, một trong những khu rừng ngập nước lớn nhất Việt Nam. Tuy nhiên, do tác động của con người và các yếu tố tự nhiên, rừng U Minh dần bị thu hẹp, dẫn đến sự cần thiết phải bảo tồn và phát triển khu vực này.<br>Năm 2006, Chính phủ Việt Nam đã quyết định thành lập Vườn Quốc gia U Minh Hạ với mục đích bảo tồn hệ sinh thái rừng ngập nước, bảo vệ các loài động, thực vật quý hiếm, và tạo điều kiện cho nghiên cứu khoa học và phát triển du lịch sinh thái. Từ đó, Vườn Quốc gia U Minh Hạ không ngừng phát triển, trở thành một trong những khu bảo tồn quan trọng nhất của Việt Nam.</p><p>Vườn Quốc gia U Minh Hạ được coi là một trong những kho tàng sinh thái quý giá của Việt Nam, với hệ sinh thái rừng tràm và đầm lầy đa dạng. Khu vực này là nơi cư trú của hàng trăm loài động, thực vật, trong đó nhiều loài là đặc hữu hoặc đang bị đe dọa.</p>', 0, 1, 13, '2024-12-20 08:29:22', '2024-12-20 08:29:22'),
(51, 'Đầm Thị Tường', 'Huyện Trần Văn Thời và huyện Phú Tân, tỉnh Cà Mau', 'Miễn phí', '<p>Đầm Thị Tường được hình thành từ phù sa bồi lắng của sông Mỹ Bình, sông Ông Đốc và nhiều kênh rạch khác. Đầm Thị Tường có diện tích mặt nước khoảng 700 ha, trải dài 12 km, chỗ rộng nhất 2 km, chỗ sâu nhất 1,5 m, thông ra Vịnh Thái Lan.</p><p>Đầm Thị Tường gắn liền với giai thoại kể rằng: xưa kia, bà Tô Quý Thị, thường gọi là Thị Tường là người giỏi võ và là người đầu tiên đến nơi đây khai hoang mở đất. Thuở ấy, vì chúa Hổ không lấy được con gái vua Thủy Tề bèn sinh hận. Chúa Hổ phái bầy chim trời lấy đá lấp biển, nhưng bà Tường đã dũng cảm xua đuổi bầy chim trời để giữ lại đầm cho ngư dân sinh sống. Nhờ công bà mà người dân có thể nuôi trồng đánh bắt thủy hải sản từ đầm, cuộc sống được cải thiện hơn nhiều. Cảm động trước công đức của bà, người dân đã lấy tên bà đặt cho đầm, từ đó đầm có tên là đầm Thị Tường hay còn gọi đầm Bà Tường.</p><p>Đầm gồm 3 đầm chính: đầm Trong, đầm Giữa và đầm Ngoài, trong đó đầm Giữa là đầm lớn nhất. Đặc trưng của đầm khác với ao hồ là độ sâu, nếu đầm giữa rất sâu có nơi sâu tới 10 thước thì đầm trên và dưới rất cạn chưa đến đầu người. Mực nước trên đầm thay đổi thường theo sự lên xuống của thủy triều từ 0,7m đến 1,5m rất an toàn cho du khách.</p><p>Cuộc sống của người dân quanh đầm Thị Tường gắn liền với con nước, gắn liền với nguồn lợi thủy hải sản tự nhiên. Bởi nhờ cấu tạo đặc biệt và thông với biển mà cả một vùng nước mênh mông dài gần 10km luôn đầy ắp thức ăn cho các loài thủy hải sản sinh trưởng. Không chỉ tận dụng tài nguyên trời phú là cá, tôm, sò huyết, rẹm sống trong đầm để nuôi sống gia đình; ngư dân Thị Tường còn dựa vào dòng nước để phát triển kinh tế. Họ sử dụng khu vực mặt nước nuôi tôm sú, cua Cà Mau. Đây là hai loại hải sản có giá trị kinh tế cao, có chỗ đứng vững chắc trong danh sách đặc sản Việt Nam.</p>', 0, 1, 13, '2024-12-20 08:30:32', '2024-12-20 08:30:32'),
(52, 'Chùa Phật học', 'Phường Tân An, quận Ninh Kiều, TP. Cần Thơ', 'Miễn phí', '<p>Chùa Phật Học Cần Thơ tọa lạc giữa lòng thành phố Tây Đô, cách bến Ninh Kiều 500m và đối diện chùa Khmer Munirensay. Du khách có thể dễ dàng và thuận tiện đi bộ đến chùa trong hành trình du lịch Cần Thơ để vãn cảnh, cảm nhận nhịp sống nơi đây.</p><p>Sở dĩ chùa có tên Phật Học do trước đây chùa là trụ sở chính của hội Phật học Nam Việt tại Cần Thơ. Ngôi chùa được xây dựng với mục đích làm nơi tu tập cho các Phật tử, đã trải qua nhiều đời trụ trì và nhiều giai đoạn lịch sử:</p><p>Năm 1951: Chùa được hội Phật học Nam Việt xây dựng với 3 tầng và có kiến trúc khá đơn giản.</p><p>Năm 1965: Hòa thượng Thích Thiện Phước giữ chức trụ trì và cai quản chùa Phật Học Cần Thơ. Ông có nhiều đóng góp cho chùa và là vị trụ trì lâu nhất.</p><p>Năm 1993: Đại đức Thích Minh Thông lên giữ chức trụ trì chùa sau khi hòa thượng Thích Thiện Phước viên tịch.</p><p>Giai đoạn 2012-2014: Chùa Phật Học được trùng tu, nâng cấp thành 5 tầng như hiện nay với kiến trúc uy nghi, độc đáo.</p><p>Chùa Phật Học Cần Thơ sở hữu kiến trúc bề thế, trang nghiêm theo phong cách Phật giáo hệ Bắc Tông với tòa tháp 5 tầng và khuôn viên xanh mát phủ nhiều cây xanh. Dù tọa lạc giữa phố phường đông đúc nhưng chùa vẫn giữ được không gian thanh tịnh, yên ả.</p>', 0, 2, 9, '2024-12-20 08:31:39', '2024-12-20 08:31:39'),
(53, 'Chợ nổi Cái Răng', 'Đường Hai Bà Trưng, quận Ninh Kiều, thành phố Cần Thơ', 'Miễn phí', '<p>Chợ nổi Cái Răng Cần Thơ sẽ mang đến những trải nghiệm có 1-0-2 cho bạn như chiêm ngưỡng khung cảnh nên thơ của chợ nổi lúc bình minh, ngồi lênh đênh trên thuyền hòa mình vào không khí buôn bán tấp nập sáng sớm và thưởng thức tô bún riêu ngay trên ghe thuyền… vô cùng tuyệt vời.</p><p>Thời điểm thích hợp để bạn đến Chợ nổi Cái Răng Cần Thơ khám phá là từ tháng 12 đến tháng 4 năm sau vì lúc nào trời nắng ráo, ít mưa nên dễ dàng để tham quan phiên chợ. Đây cũng là lúc hoa quả vào mùa thu hoạch nên bạn có thể thỏa thích mua hoa trái đặc sản của miền Tây trên chợ nổi. Vào tháng 5 đến tháng 12, Cần Thơ vào mùa mưa nên các hoạt động buôn bán trên chợ đôi khi phải tạm ngừng.</p><p>Chợ nổi Cái Răng họp chợ từ rất sớm nên bạn có thể bắt đầu chuyến tham quan phiên chợ độc đáo này từ 4 giờ sáng trở đi. Thời điểm này đã xuất hiện rất nhiều ghe xuồng tập trung lại tạo nên bầu không khí náo nhiệt, vui tươi. Đặc biệt là bạn còn có cơ hội ngắm nhìn khung cảnh bình minh đẹp tuyệt ngay trên dòng sông thơ mộng.</p><p>Ngày nay, tại Cần Thơ xuất hiện rất nhiều tuyến phục vụ khám phá Chợ nổi Cần Thơ Cái Răng xuất phát từ Bến Ninh Kiều. Để có thể đến được nơi đây, bạn nên thuê tàu, thuyền hay ghe di chuyển tùy theo số lượng người. Nếu đoàn ít người thì nên đi ghe/thuyền nhỏ. Đông người thì lựa chọn đi ghé tàu thuyền thì sẽ tiết kiệm được kha khá chi phí.</p>', 0, 4, 9, '2024-12-20 08:32:37', '2024-12-20 08:32:37'),
(54, 'Nhà cổ Bình Thủy', 'Đường Bùi Hữu Nghĩa, phường Bình Thủy, quận Bình Thủy', 'Miễn phí', '<p>Từ trung tâm thành phố Cần Thơ, chỉ cần di chuyển khoảng 10km là bạn sẽ đến được nhà cổ Bình Thủy. Căn nhà tọa lạc tại số 144 đường Bùi Hữu Nghĩa, phường Bình Thủy, quận Bình Thủy. Từ cuối thế kỷ thứ 18, vùng “đất lành chim đậu” Cần Thơ thu hút cư dân khắp nơi về an cư lạc nghiệp. Trong số đó có gia tộc họ Dương.</p><p>Ông Dương Văn Vị, con cháu đời thứ 3 của gia tộc này là người bắt đầu cho xây dựng ngôi nhà này. Ban đầu, nhà làm bằng gỗ và lợp ngói. 30 Năm sau, cũng chính ông thiết kế và xây dựng lại. Năm 1904, ông qua đời và con trai út của ông là Dương Chấn Kỷ tiếp tục xây dựng ngôi nhà. Mãi đến năm 1911, ngôi nhà mới thực sự hoàn thành.</p><p>Trải qua hơn 150 năm thăng trầm lịch sử ở vùng đất Tây Đô, đây là một trong số hiếm hoi những công trình nhà cổ còn được gìn giữ gần như nguyên vẹn. Nhà cổ Bình thủy đã trở thành phim trường của hàng loạt tác phẩm điện ảnh nổi tiếng như bộ phim Người tình (điện ảnh Pháp); Người đẹp Tây Đô; Những nẻo đường phù sa,…</p><p>Năm 2009, nhà cổ Bình Thủy đã được công nhận là Di tích kiến trúc nghệ thuật cấp quốc gia. Và nơi đây luôn trở thành điểm đến hấp dẫn của mọi du khách trên hành trình khám phá miền Tây sông nước.</p>', 0, 4, 9, '2024-12-20 08:34:08', '2024-12-20 08:34:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(60, '2024_12_05_120029_create_roles_table', 1),
(61, '2014_10_12_000000_create_users_table', 2),
(62, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(63, '2019_08_19_000000_create_failed_jobs_table', 3),
(64, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(65, '2024_12_05_122353_create_provinces_table', 3),
(66, '2024_12_05_122354_create_types_table', 3),
(67, '2024_12_05_122355_create_slides_table', 3),
(68, '2024_12_05_122404_create_contacts_table', 3),
(69, '2024_12_05_122351_create_locations_table', 4),
(70, '2024_12_05_122352_create_photos_table', 5),
(71, '2024_12_05_122352_create_type_of_utilities_table', 5),
(72, '2024_12_05_122353_create_utilities_table', 6),
(73, '2024_12_05_122354_create_reviews_table', 6),
(74, '2024_12_05_122355_create_posts_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photos`
--

CREATE TABLE `photos` (
  `id` int UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `status` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `photos`
--

INSERT INTO `photos` (`id`, `name`, `caption`, `url`, `status`, `id_location`, `created_at`, `updated_at`) VALUES
(7, '1734054770-bien-ba-dong-6.webp', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 2, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(8, '1734054770-badong1.jpg', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(9, '1734054770-badong2.jpg', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(10, '1734054770-bien-ba-dong-3-1024x654.webp', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(11, '1734054770-bien-ba-dong-dia-diem-thu-hut-dong-dao-khach-du-lich-tai-tra-vinh.jpg', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(12, '1734055073-aobaom-02.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 2, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(13, '1734055073-ao-ba-om.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-15 06:46:58'),
(14, '1734055073-aobaom-1.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(15, '1734055073-aobaom-6.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(16, '1734055073-aobaom-8.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(17, '1734270407-den-tho-bac-tra-vinh-tu-tren-cao-1705917255.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 2, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(18, '1734270407-0aab38b2e28320dd7992-2048x1365.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(19, '1734270407-6f16f20a4f3b8d65d42a-2048x1365.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(20, '1734270407-605a0a3db40c76522f1d-2048x1365.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(21, '1734270407-f9ba6ec9d3f811a648e9-2048x1536.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(22, '1734270549-chua-ang-02-1700589047.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 2, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(23, '1734270549-chua-ang-01-1700589047.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(24, '1734270549-chuaang3-1.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(25, '1734270549-chua-ang-04-1700589047.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(26, '1734270549-chua-ang-06-1700589040.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(27, '1734270644-nui-co-to-2.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 2, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(28, '1734270644-nui-co-to.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(29, '1734270644-nui-co-to-01-1.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(30, '1734270644-nui-co-to-an-giang.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(31, '1734270644-nui-to-an-giang.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(32, '1734270782-Ben-Ninh-Kieu-10.jpeg', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 2, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(33, '1734270782-ben_ninh_kieu_can_tho_du_lich_thu_duc_2.jpg', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(34, '1734270782-benninhkieu.jpg', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(35, '1734270782-ben-ninh-kieu-2.webp', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(36, '1734270782-ben-ninh-kieu-3.webp', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(37, '1734273028-cho-noi-tra-on-net-van-hoa-giao-thuong-dac-sac-mien-cuu-long-02-1662643226.jpeg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 2, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(38, '1734273028-cho-noi-tra-on-net-van-hoa-giao-thuong-dac-sac-mien-cuu-long-01-1662643226.jpeg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(39, '1734273028-cho-noi-tra-on-net-van-hoa-giao-thuong-dac-sac-mien-cuu-long-05-1662643226.jpeg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(40, '1734273028-tra_on1_BongTrip_vn.jpg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(41, '1734273028-tra_on3_Bazan_Travel.jpg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(42, '1734273461-langnoitanlap01.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 2, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(43, '1734273461-langnoitanlap-1.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(44, '1734273461-langnoitanlap04.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(45, '1734273461-langnoitanlap-9.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(46, '1734273461-langnoitanlaplongan01.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(47, '1734599925-lang-co-phuoc-loc-tho-01-1696516109.jpg', 'Làng cổ với không khí mát mẻ', NULL, 2, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(48, '1734599926-lang-co-phuoc-loc-tho-03-1696516109.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(49, '1734599926-lang-co-phuoc-loc-tho-04-1696516109.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(50, '1734599926-lang-co-phuoc-loc-tho-08-1696516170.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(51, '1734599926-lang-co-phuoc-loc-tho-09-1696516170.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(52, '1734599990-nha-tram-cot-2.webp', 'Ngôi nhà cổ kín', NULL, 2, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(53, '1734599990-nha-tram-cot-6-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(54, '1734599990-nha-tram-cot-7-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(55, '1734599990-nha-tram-cot-8-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(56, '1734599990-nha-tram-cot-9-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(57, '1734600070-canhdongbattan-1.jpg', 'Cánh đồng rộng lớn', NULL, 2, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(58, '1734600070-canhdongbattanlongan03.jpg', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(59, '1734600070-khu-du-lich-canh-dong-bat-tan-1-1024x683.webp', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(60, '1734600070-khu-du-lich-canh-dong-bat-tan-6-1024x614.webp', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(61, '1734600070-khu-du-lich-canh-dong-bat-tan-8-1024x678.webp', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(62, '1734600163-bien-tan-thanh-go-cong-0.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 2, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(63, '1734600163-bientanthanh-1.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(64, '1734600163-bien-tan-thanh-go-cong-1.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(65, '1734600163-bien-tan-thanh-go-cong-3-min.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(66, '1734600163-kinh-nghiem-du-lich-bien-tan-thanh-go-cong-tien-giang-day-du-202203240751282536.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(67, '1734600213-nhathocaibe1.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 2, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(68, '1734600213-nhathocaibe2.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(69, '1734600213-nhathocaibe3.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(70, '1734600213-nhathocaibe4-1.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(71, '1734600213-nhathocaibe9.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(72, '1734600351-Nha-tho-chinh-toa-My-Tho-4.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 2, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(73, '1734600351-nha-tho-chanh-toa-my-tho-co-tuoi-doi-tram-nam-voi-ve-dep-yen-binh-4-1650972388.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(74, '1734600351-nha-tho-chanh-toa-my-tho-co-tuoi-doi-tram-nam-voi-ve-dep-yen-binh-5-1650972388.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(75, '1734600351-nha-tho-chanh-toa-my-tho-co-tuoi-doi-tram-nam-voi-ve-dep-yen-binh-6-1650972388.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(76, '1734600351-Nha-tho-chinh-toa-My-Tho-7-1170x785.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(77, '1734600609-Screenshot 2024-12-19 162908.png', 'Làng cổ Đông Hòa Hiệp', NULL, 2, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(78, '1734600609-kham-pha-khong-gian-nam-bo-tai-lang-co-dong-hoa-hiep-tien-giang-1-1650992389.jpg', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(79, '1734600609-kham-pha-khong-gian-nam-bo-tai-lang-co-dong-hoa-hiep-tien-giang-5-1650992389.jpg', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(80, '1734600609-langcodonghoahiep.jpg', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(81, '1734600609-Screenshot 2024-12-19 162858.png', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(82, '1734600649-dia-diem-du-lich-dong-thap-4.webp', 'Làng hoa Sa Đéc', NULL, 2, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(83, '1734600649-24d3e752a8046b5a3215_805332015.jpeg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(84, '1734600649-du-lich-lang-hoa-sa-dec-dong-thap.jpg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(85, '1734600649-lang-hoa-sa-dec-dong-thap-la-cai-noi-cua-nghe-trong-hoa-kieng(1).jpg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(86, '1734600649-ve-dep-cua-lang-hoa-sa-dec-dong-thap(1).jpg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(87, '1734600706-nhacohuynhthuyle-1.jpg', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 2, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(88, '1734600706-nha-co-huynh-thuy-le02.jpg', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(89, '1734600706-nha-co-huynh-thuy-le-5.webp', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(90, '1734600706-nha-co-huynh-thuy-le-06.jpg', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(91, '1734600706-nha-co-huynh-thuy-le-7-1024x683.webp', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(92, '1734600792-download.jpg', 'Phước Kiển Tự', NULL, 2, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(93, '1734600792-chua-la-sen-1-1024x576.webp', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(94, '1734600792-chua-la-sen-2-1024x576.webp', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(95, '1734600792-download (1).jpg', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(96, '1734600792-images.jpg', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(97, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-1.webp', 'Đồng sen Tháp Mười', NULL, 2, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(98, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-3.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(99, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-5.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(100, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-6.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(101, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-cover.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(102, '1734600850-vuon-quoc-gia-tram-chim-dong-thap-7.jpg', 'Vườn quốc gia Tràm Chim', NULL, 2, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(103, '1734600850-vuon-quoc-gia-tram-chim-1-1.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(104, '1734600850-vuon-quoc-gia-tram-chim-2.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(105, '1734600850-vuon-quoc-gia-tram-chim-3.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(106, '1734600850-vuon-quoc-gia-tram-chim-dong-thap-3.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(107, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-1-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 2, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(108, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-3-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(109, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-4-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(110, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-5-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(111, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-6-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(112, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-2-1662989919.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 2, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(113, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-1-1662989919.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(114, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-3-1662989919.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(115, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-4-1662989918.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(116, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-6-1662989918.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(117, '1734705308-chua-ong-that-phu-mieu-vinh-long-cong-trinh-kien-truc-doc-dao-cua-nguoi-hoa-2-1662305153.jpeg', 'Chùa ông Thất Phủ Miếu', NULL, 2, 24, '2024-12-20 07:35:09', '2024-12-20 07:35:09'),
(118, '1734705309-chua_ong_that_phu_mieu_vinh_long_thamhiemmekong_2.jpg', 'Chùa ông Thất Phủ Miếu', NULL, 0, 24, '2024-12-20 07:35:09', '2024-12-20 07:35:09'),
(119, '1734705309-chua-ong-that-phu-mieu-vinh-long-cong-trinh-kien-truc-doc-dao-cua-nguoi-hoa-3-1662305153.jpeg', 'Chùa ông Thất Phủ Miếu', NULL, 0, 24, '2024-12-20 07:35:09', '2024-12-20 07:35:09'),
(120, '1734705309-chua-ong-that-phu-mieu-vinh-long-cong-trinh-kien-truc-doc-dao-cua-nguoi-hoa-6-1662305153.jpeg', 'Chùa ông Thất Phủ Miếu', NULL, 0, 24, '2024-12-20 07:35:09', '2024-12-20 07:35:09'),
(121, '1734705309-Screenshot 2024-12-20 213412.png', 'Chùa ông Thất Phủ Miếu', NULL, 0, 24, '2024-12-20 07:35:09', '2024-12-20 07:35:09'),
(122, '1734705487-nga-bay-hau-giang-1141.jpg', 'Chợ nổi Ngã Bảy', NULL, 2, 25, '2024-12-20 07:38:07', '2024-12-20 07:38:07'),
(123, '1734705487-cho-noi-cai-be.png', 'Chợ nổi Ngã Bảy', NULL, 0, 25, '2024-12-20 07:38:07', '2024-12-20 07:38:07'),
(124, '1734705487-cho-noi-nga-bay.jpg', 'Chợ nổi Ngã Bảy', NULL, 0, 25, '2024-12-20 07:38:07', '2024-12-20 07:38:07'),
(125, '1734705487-cho-noi-nga-bay-la-noi-giao-thoa-cua-7-dong-song.jpg', 'Chợ nổi Ngã Bảy', NULL, 0, 25, '2024-12-20 07:38:07', '2024-12-20 07:38:07'),
(126, '1734705487-net-van-hoa-dac-sac.jpg', 'Chợ nổi Ngã Bảy', NULL, 0, 25, '2024-12-20 07:38:07', '2024-12-20 07:38:07'),
(127, '1734705767-Screenshot 2024-12-20 214154.png', 'Rừng Tràm Vị Thủy', NULL, 2, 26, '2024-12-20 07:42:47', '2024-12-20 07:42:47'),
(128, '1734705767-diem-qua-2-dia-diem-du-lich-vi-thuy-hau-giang-duoc-ua-chuong-202311152236089892.jpg', 'Rừng Tràm Vị Thủy', NULL, 0, 26, '2024-12-20 07:42:47', '2024-12-20 07:42:47'),
(129, '1734705767-di-giua-mien-tram.jpg', 'Rừng Tràm Vị Thủy', NULL, 0, 26, '2024-12-20 07:42:47', '2024-12-20 07:42:47'),
(130, '1734705767-khu_sinh_thai_rung_tram_chim_vi_thuy_du_lich_thu_duc_2.jpg', 'Rừng Tràm Vị Thủy', NULL, 0, 26, '2024-12-20 07:42:47', '2024-12-20 07:42:47'),
(131, '1734705767-khu_sinh_thai_rung_tram_chim_vi_thuy_du_lich_thu_duc_3.jpg', 'Rừng Tràm Vị Thủy', NULL, 0, 26, '2024-12-20 07:42:47', '2024-12-20 07:42:47'),
(132, '1734705869-2.-Thien-Vien-Truc-Lam-nguon-csdl.vietnamtourism.gov_.vn_-1.jpg', 'Thiền Viện Trúc Lâm', NULL, 2, 27, '2024-12-20 07:44:29', '2024-12-20 07:44:29'),
(133, '1734705869-20.-Thien-Vien-Truc-Lam-nguon-vi.worldcombiz.com_.jpg', 'Thiền Viện Trúc Lâm', NULL, 0, 27, '2024-12-20 07:44:29', '2024-12-20 07:44:29'),
(134, '1734705869-screenshot_1729776474_351530299.png', 'Thiền Viện Trúc Lâm', NULL, 0, 27, '2024-12-20 07:44:29', '2024-12-20 07:44:29'),
(135, '1734705869-thienvientruclamhaugiang2.jpg', 'Thiền Viện Trúc Lâm', NULL, 0, 27, '2024-12-20 07:44:29', '2024-12-20 07:44:29'),
(136, '1734705869-thienvientruclamhaugiang3.jpg', 'Thiền Viện Trúc Lâm', NULL, 0, 27, '2024-12-20 07:44:29', '2024-12-20 07:44:29'),
(137, '1734706363-conduongtre.jpg', 'Con đường tre', NULL, 2, 28, '2024-12-20 07:52:43', '2024-12-20 07:52:43'),
(138, '1734706363-z6150389067900_16e06b479d696125647b39f29dabdbc9.jpg', 'Con đường tre', NULL, 0, 28, '2024-12-20 07:52:43', '2024-12-20 07:52:43'),
(139, '1734706363-z6150389067939_2a3101767d1b27975b13e4e34d276b9d.jpg', 'Con đường tre', NULL, 0, 28, '2024-12-20 07:52:43', '2024-12-20 07:52:43'),
(140, '1734706363-z6150389068035_e8336a396eff71d0d9f6fe299fbb63e7.jpg', 'Con đường tre', NULL, 0, 28, '2024-12-20 07:52:43', '2024-12-20 07:52:43'),
(141, '1734706363-z6150389068036_90de1e4a9deec6e62698a211fdf5b2bb.jpg', 'Con đường tre', NULL, 0, 28, '2024-12-20 07:52:43', '2024-12-20 07:52:43'),
(142, '1734706652-kham-pha-chua-doi-400-nam-tuoi-doc-dao-tai-soc-trang-1-1664928914.jpg', 'Chùa Dơi', NULL, 2, 29, '2024-12-20 07:57:32', '2024-12-20 07:57:32'),
(143, '1734706652-chua-doi-nemtv-03.jpg', 'Chùa Dơi', NULL, 0, 29, '2024-12-20 07:57:32', '2024-12-20 07:57:32'),
(144, '1734706652-chua-doi-st.png', 'Chùa Dơi', NULL, 0, 29, '2024-12-20 07:57:32', '2024-12-20 07:57:32'),
(145, '1734706652-Den-chua-Doi-o-Soc-Trang-tim-loi-giai-bi-an-ngan-nam-h2.jpg', 'Chùa Dơi', NULL, 0, 29, '2024-12-20 07:57:32', '2024-12-20 07:57:32'),
(146, '1734706652-kham-pha-chua-doi-400-nam-tuoi-doc-dao-tai-soc-trang-3-1664928915.jpg', 'Chùa Dơi', NULL, 0, 29, '2024-12-20 07:57:32', '2024-12-20 07:57:32'),
(147, '1734706708-chonoinganam.jpg', 'Chợ nổi Ngã Năm', NULL, 2, 30, '2024-12-20 07:58:28', '2024-12-20 07:58:28'),
(148, '1734706708-chonoinganam-1-1.jpg', 'Chợ nổi Ngã Năm', NULL, 0, 30, '2024-12-20 07:58:28', '2024-12-20 07:58:28'),
(149, '1734706708-chonoinganam-2.jpg', 'Chợ nổi Ngã Năm', NULL, 0, 30, '2024-12-20 07:58:28', '2024-12-20 07:58:28'),
(150, '1734706708-chonoinganam-3.jpg', 'Chợ nổi Ngã Năm', NULL, 0, 30, '2024-12-20 07:58:28', '2024-12-20 07:58:28'),
(151, '1734706708-chonoinganam4.jpg', 'Chợ nổi Ngã Năm', NULL, 0, 30, '2024-12-20 07:58:28', '2024-12-20 07:58:28'),
(152, '1734706785-khu-vuon-rong-2-ha.jpg', 'Vườn cò Tân Long', NULL, 2, 31, '2024-12-20 07:59:45', '2024-12-20 07:59:45'),
(153, '1734706785-ghe-tham-vuon-co-tan-long-kham-pha-thien-nhien-thanh-binh-tru-phu-1-1666136227.jpg', 'Vườn cò Tân Long', NULL, 0, 31, '2024-12-20 07:59:45', '2024-12-20 07:59:45'),
(154, '1734706785-ghe-tham-vuon-co-tan-long-kham-pha-thien-nhien-thanh-binh-tru-phu-4-1666136227.jpg', 'Vườn cò Tân Long', NULL, 0, 31, '2024-12-20 07:59:45', '2024-12-20 07:59:45'),
(155, '1734706785-ghe-tham-vuon-co-tan-long-kham-pha-thien-nhien-thanh-binh-tru-phu-cover-1666136227.jpg', 'Vườn cò Tân Long', NULL, 0, 31, '2024-12-20 07:59:45', '2024-12-20 07:59:45'),
(156, '1734706785-tung-dan-co-trang-muot.jpg', 'Vườn cò Tân Long', NULL, 0, 31, '2024-12-20 07:59:45', '2024-12-20 07:59:45'),
(157, '1734706864-chua-la-han-diem-den-tam-linh-dep-tua-co-tich-tai-soc-trang-05-1664443304.jpeg', 'Chùa La Hán', NULL, 2, 32, '2024-12-20 08:01:04', '2024-12-20 08:01:04'),
(158, '1734706864-9af74c16e6b43bea62a5_11055224032023.jpg', 'Chùa La Hán', NULL, 0, 32, '2024-12-20 08:01:04', '2024-12-20 08:01:04'),
(159, '1734706864-chua-la-han-diem-den-tam-linh-dep-tua-co-tich-tai-soc-trang-01-1664443303.jpeg', 'Chùa La Hán', NULL, 0, 32, '2024-12-20 08:01:04', '2024-12-20 08:01:04'),
(160, '1734706864-chua-la-han-diem-den-tam-linh-dep-tua-co-tich-tai-soc-trang-04-1664443304.jpeg', 'Chùa La Hán', NULL, 0, 32, '2024-12-20 08:01:04', '2024-12-20 08:01:04'),
(161, '1734706864-photo-1-1647331350964979122023.webp', 'Chùa La Hán', NULL, 0, 32, '2024-12-20 08:01:04', '2024-12-20 08:01:04'),
(162, '1734706932-conquy2.jpg', 'Cồn Quy', NULL, 2, 33, '2024-12-20 08:02:12', '2024-12-20 08:02:12'),
(163, '1734706932-con-quy-5435f5c0920ae.png', 'Cồn Quy', NULL, 0, 33, '2024-12-20 08:02:12', '2024-12-20 08:02:12'),
(164, '1734706932-con-quy-ben-tre-va-khong-gian-thanh-binh-dam-chat-song-nuoc-9-1667232134.jpg', 'Cồn Quy', NULL, 0, 33, '2024-12-20 08:02:12', '2024-12-20 08:02:12'),
(165, '1734706932-download (1).jpg', 'Cồn Quy', NULL, 0, 33, '2024-12-20 08:02:12', '2024-12-20 08:02:12'),
(166, '1734706932-download.jpg', 'Cồn Quy', NULL, 0, 33, '2024-12-20 08:02:12', '2024-12-20 08:02:12'),
(167, '1734706994-12.5.ve_ben_tre_tham_con_phung_–_lang_que_yen_binh_xu_dua.jpg', 'Cồn Phụng', NULL, 2, 34, '2024-12-20 08:03:14', '2024-12-20 08:03:14'),
(168, '1734706994-1.webp', 'Cồn Phụng', NULL, 0, 34, '2024-12-20 08:03:14', '2024-12-20 08:03:14'),
(169, '1734706994-conphung-bentre.jpg', 'Cồn Phụng', NULL, 0, 34, '2024-12-20 08:03:14', '2024-12-20 08:03:14'),
(170, '1734706994-Du-lich-Con-Phung-Con-Thoi-Son-2024.jpg', 'Cồn Phụng', NULL, 0, 34, '2024-12-20 08:03:14', '2024-12-20 08:03:14'),
(171, '1734706994-tro-choi-teambuilding-con-phung-1.jpg', 'Cồn Phụng', NULL, 0, 34, '2024-12-20 08:03:14', '2024-12-20 08:03:14'),
(172, '1734707092-bien-binh-dai-ben-tre.jpg', 'Biển Bình Đại', NULL, 2, 35, '2024-12-20 08:04:52', '2024-12-20 08:04:52'),
(173, '1734707092-1@gui.tonon2_-1024x722.jpg', 'Biển Bình Đại', NULL, 0, 35, '2024-12-20 08:04:52', '2024-12-20 08:04:52'),
(174, '1734707092-bien-ben-tre.jpg', 'Biển Bình Đại', NULL, 0, 35, '2024-12-20 08:04:52', '2024-12-20 08:04:52'),
(175, '1734707092-download (2).jpg', 'Biển Bình Đại', NULL, 0, 35, '2024-12-20 08:04:52', '2024-12-20 08:04:52'),
(176, '1734707092-review-bien-binh-dai.jpg', 'Biển Bình Đại', NULL, 0, 35, '2024-12-20 08:04:52', '2024-12-20 08:04:52'),
(177, '1734707164-kham-pha-lang-nghe-banh-trang-my-long-net-dep-truyen-thong-tai-xu-dua-5-1666623940.jpg', 'Làng nghề bánh tráng Mỹ Lồng', NULL, 2, 36, '2024-12-20 08:06:04', '2024-12-20 08:06:04'),
(178, '1734707164-banhtrang.jpg', 'Làng nghề bánh tráng Mỹ Lồng', NULL, 0, 36, '2024-12-20 08:06:04', '2024-12-20 08:06:04'),
(179, '1734707164-download (1).jpg', 'Làng nghề bánh tráng Mỹ Lồng', NULL, 0, 36, '2024-12-20 08:06:04', '2024-12-20 08:06:04'),
(180, '1734707164-ghe-tham-4-lang-nghe-banh-trang-nuc-tieng-20-.9832.jpg', 'Làng nghề bánh tráng Mỹ Lồng', NULL, 0, 36, '2024-12-20 08:06:04', '2024-12-20 08:06:04'),
(181, '1734707164-langnghebanhtrangmylong1.jpg', 'Làng nghề bánh tráng Mỹ Lồng', NULL, 0, 36, '2024-12-20 08:06:04', '2024-12-20 08:06:04'),
(182, '1734707245-ho-soai-so-2-1024x680.webp', 'Hồ Soài So', NULL, 2, 37, '2024-12-20 08:07:25', '2024-12-20 08:07:25'),
(183, '1734707245-ho-soai-so-1-1024x682.webp', 'Hồ Soài So', NULL, 0, 37, '2024-12-20 08:07:25', '2024-12-20 08:07:25'),
(184, '1734707245-ho-soai-so-4-1024x683.webp', 'Hồ Soài So', NULL, 0, 37, '2024-12-20 08:07:25', '2024-12-20 08:07:25'),
(185, '1734707245-kham-pha-ve-dep-ho-soai-so-thanh-binh-va-tinh-lang-3-1660653476.jpg', 'Hồ Soài So', NULL, 0, 37, '2024-12-20 08:07:25', '2024-12-20 08:07:25'),
(186, '1734707245-kham-pha-ve-dep-ho-soai-so-thanh-binh-va-tinh-lang-9-1660653477.jpg', 'Hồ Soài So', NULL, 0, 37, '2024-12-20 08:07:25', '2024-12-20 08:07:25'),
(187, '1734707339-kham-pha-du-lich-rung-tram-tra-su-o-an-giang-xanh-muot-mat-202203300112572650.jpg', 'Rừng tràm Trà Sư', NULL, 2, 38, '2024-12-20 08:08:59', '2024-12-20 08:08:59'),
(188, '1734707339-dam-chim-trong-khong-gian-xanh-muot-mat-cua-rung-tram-tra-su8.webp', 'Rừng tràm Trà Sư', NULL, 0, 38, '2024-12-20 08:08:59', '2024-12-20 08:08:59'),
(189, '1734707339-kham-pha-du-lich-rung-tram-tra-su-o-an-giang-xanh-muot-mat-202203300104394479.jpg', 'Rừng tràm Trà Sư', NULL, 0, 38, '2024-12-20 08:08:59', '2024-12-20 08:08:59'),
(190, '1734707339-kham-pha-du-lich-rung-tram-tra-su-o-an-giang-xanh-muot-mat-202203300113246459.jpg', 'Rừng tràm Trà Sư', NULL, 0, 38, '2024-12-20 08:08:59', '2024-12-20 08:08:59'),
(191, '1734707339-kham-pha-du-lich-rung-tram-tra-su-o-an-giang-xanh-muot-mat-202203300113426518.jpg', 'Rừng tràm Trà Sư', NULL, 0, 38, '2024-12-20 08:08:59', '2024-12-20 08:08:59'),
(192, '1734707416-chua-ta-pa-2-1024x682.webp', 'Chùa Tà Pạ', NULL, 2, 39, '2024-12-20 08:10:16', '2024-12-20 08:10:16'),
(193, '1734707416-chuatapa.jpg', 'Chùa Tà Pạ', NULL, 0, 39, '2024-12-20 08:10:16', '2024-12-20 08:10:16'),
(194, '1734707416-chuatapa2.jpg', 'Chùa Tà Pạ', NULL, 0, 39, '2024-12-20 08:10:16', '2024-12-20 08:10:16'),
(195, '1734707416-chua-ta-pa-an-giang-01.jpg', 'Chùa Tà Pạ', NULL, 0, 39, '2024-12-20 08:10:16', '2024-12-20 08:10:16'),
(196, '1734707416-chua-ta-pa-an-giang-4.jpg', 'Chùa Tà Pạ', NULL, 0, 39, '2024-12-20 08:10:16', '2024-12-20 08:10:16'),
(197, '1734707515-NDT1-1785-1719909908.jpg', 'Quần đảo Nam Du', NULL, 2, 40, '2024-12-20 08:11:55', '2024-12-20 08:11:55'),
(198, '1734707515-bi-ng160321.jpg', 'Quần đảo Nam Du', NULL, 0, 40, '2024-12-20 08:11:55', '2024-12-20 08:11:55'),
(199, '1734707515-Du-lịch-đảo-Nam-Du-ivivu.jpg', 'Quần đảo Nam Du', NULL, 0, 40, '2024-12-20 08:11:55', '2024-12-20 08:11:55'),
(200, '1734707515-honNgang-2590-1719909909.jpg', 'Quần đảo Nam Du', NULL, 0, 40, '2024-12-20 08:11:55', '2024-12-20 08:11:55'),
(201, '1734707515-NDT4-6100-1719909908.jpg', 'Quần đảo Nam Du', NULL, 0, 40, '2024-12-20 08:11:55', '2024-12-20 08:11:55'),
(202, '1734707591-Hon-Son-7772-1721031890.jpg', 'Hòn Sơn', NULL, 2, 41, '2024-12-20 08:13:11', '2024-12-20 08:13:11'),
(203, '1734707591-du-lich-hon-son-dao-hon-son-thien-duong-vui-choi-tai-kien-giang-02-1668550150.jpg', 'Hòn Sơn', NULL, 0, 41, '2024-12-20 08:13:11', '2024-12-20 08:13:11'),
(204, '1734707591-du-lich-hon-son-dao-hon-son-thien-duong-vui-choi-tai-kien-giang-04-1668550151.jpg', 'Hòn Sơn', NULL, 0, 41, '2024-12-20 08:13:11', '2024-12-20 08:13:11'),
(205, '1734707591-du-lich-hon-son-dao-hon-son-thien-duong-vui-choi-tai-kien-giang-05-1668550151.jpg', 'Hòn Sơn', NULL, 0, 41, '2024-12-20 08:13:11', '2024-12-20 08:13:11'),
(206, '1734707591-du-lich-hon-son-dao-hon-son-thien-duong-vui-choi-tai-kien-giang-08-1668550151.jpg', 'Hòn Sơn', NULL, 0, 41, '2024-12-20 08:13:11', '2024-12-20 08:13:11'),
(207, '1734707786-bahondam-2042-1721031890.jpg', 'Quần đảo Bà Lụa', NULL, 2, 42, '2024-12-20 08:16:26', '2024-12-20 08:16:26'),
(208, '1734707786-dao-ba-lua-ivivu6.jpg', 'Quần đảo Bà Lụa', NULL, 0, 42, '2024-12-20 08:16:26', '2024-12-20 08:16:26'),
(209, '1734707786-dao-ba-lua-ivivu10.jpg', 'Quần đảo Bà Lụa', NULL, 0, 42, '2024-12-20 08:16:26', '2024-12-20 08:16:26'),
(210, '1734707786-quan-dao-ba-lua-2_1634789202.jpg', 'Quần đảo Bà Lụa', NULL, 0, 42, '2024-12-20 08:16:26', '2024-12-20 08:16:26'),
(211, '1734707786-thoi-diem-thich-hop-di-dao-ba-lua.jpg', 'Quần đảo Bà Lụa', NULL, 0, 42, '2024-12-20 08:16:26', '2024-12-20 08:16:26'),
(212, '1734707978-vuon-quoc-gia-u-minh-thuong-1_1706158765.jpg', 'Vườn quốc gia U Minh Thượng', NULL, 2, 43, '2024-12-20 08:19:38', '2024-12-20 08:19:38'),
(213, '1734707978-download (1).jpg', 'Vườn quốc gia U Minh Thượng', NULL, 0, 43, '2024-12-20 08:19:38', '2024-12-20 08:19:38'),
(214, '1734707978-download.jpg', 'Vườn quốc gia U Minh Thượng', NULL, 0, 43, '2024-12-20 08:19:38', '2024-12-20 08:19:38'),
(215, '1734707978-vuon-quoc-gia-u-minh-thuong-0_1706158731.jpg', 'Vườn quốc gia U Minh Thượng', NULL, 0, 43, '2024-12-20 08:19:38', '2024-12-20 08:19:38'),
(216, '1734707978-vuon-quoc-gia-u-minh-thuong-2_1706158798.jpg', 'Vườn quốc gia U Minh Thượng', NULL, 0, 43, '2024-12-20 08:19:38', '2024-12-20 08:19:38'),
(217, '1734708110-nhacongtuBL.jpg', 'Nhà công tử Bạc Liêu', NULL, 2, 44, '2024-12-20 08:21:50', '2024-12-20 08:21:50'),
(218, '1734708110-nhacongtubaclieu01.jpg', 'Nhà công tử Bạc Liêu', NULL, 0, 44, '2024-12-20 08:21:50', '2024-12-20 08:21:50'),
(219, '1734708110-nhacongtubaclieu1.jpg', 'Nhà công tử Bạc Liêu', NULL, 0, 44, '2024-12-20 08:21:50', '2024-12-20 08:21:50'),
(220, '1734708110-nhacongtubaclieu2.jpg', 'Nhà công tử Bạc Liêu', NULL, 0, 44, '2024-12-20 08:21:50', '2024-12-20 08:21:50'),
(221, '1734708110-nhacongtubaclieu3.jpg', 'Nhà công tử Bạc Liêu', NULL, 0, 44, '2024-12-20 08:21:50', '2024-12-20 08:21:50'),
(222, '1734708204-canh-dong-dien-gio-bac-lieu-05-1699885104.jpg', 'Cánh đồng điện gió Bạc Liêu', NULL, 2, 45, '2024-12-20 08:23:24', '2024-12-20 08:23:24'),
(223, '1734708204-canh-dong-dien-gio-bac-lieu-01-1699885103.jpg', 'Cánh đồng điện gió Bạc Liêu', NULL, 0, 45, '2024-12-20 08:23:24', '2024-12-20 08:23:24'),
(224, '1734708204-canh-dong-dien-gio-Bac-Lieu-1-1024x710.webp', 'Cánh đồng điện gió Bạc Liêu', NULL, 0, 45, '2024-12-20 08:23:24', '2024-12-20 08:23:24'),
(225, '1734708204-canh-dong-dien-gio-Bac-Lieu-5.webp', 'Cánh đồng điện gió Bạc Liêu', NULL, 0, 45, '2024-12-20 08:23:24', '2024-12-20 08:23:24'),
(226, '1734708204-canh-dong-dien-gio-bac-lieu-09-1699885093.jpg', 'Cánh đồng điện gió Bạc Liêu', NULL, 0, 45, '2024-12-20 08:23:24', '2024-12-20 08:23:24'),
(227, '1734708293-chuaGhositaram4.jpg', 'Chùa Ghositaram', NULL, 2, 46, '2024-12-20 08:24:53', '2024-12-20 08:24:53'),
(228, '1734708293-chuaGhositaram01.jpg', 'Chùa Ghositaram', NULL, 0, 46, '2024-12-20 08:24:53', '2024-12-20 08:24:53'),
(229, '1734708293-chuaGhositaram-01.jpg', 'Chùa Ghositaram', NULL, 0, 46, '2024-12-20 08:24:53', '2024-12-20 08:24:53'),
(230, '1734708293-chuaGhositaram3.jpg', 'Chùa Ghositaram', NULL, 0, 46, '2024-12-20 08:24:53', '2024-12-20 08:24:53'),
(231, '1734708293-chuaGhositaram6.jpg', 'Chùa Ghositaram', NULL, 0, 46, '2024-12-20 08:24:53', '2024-12-20 08:24:53'),
(232, '1734708382-canh-dong-muoi-Bac-Lieu-1.webp', 'Cánh đồng muối', NULL, 2, 47, '2024-12-20 08:26:22', '2024-12-20 08:26:22'),
(233, '1734708382-canh-dong-muoi-Bac-Lieu-1-1024x597.webp', 'Cánh đồng muối', NULL, 0, 47, '2024-12-20 08:26:22', '2024-12-20 08:26:22'),
(234, '1734708382-canh-dong-muoi-bac-lieu-dia-diem-check-in-hot-ran-ran-cua-gioi-tre-3080-2.jpg', 'Cánh đồng muối', NULL, 0, 47, '2024-12-20 08:26:22', '2024-12-20 08:26:22'),
(235, '1734708382-canh-dong-muoi-bac-lieu-dia-diem-check-in-hot-ran-ran-cua-gioi-tre-3080-7.jpg', 'Cánh đồng muối', NULL, 0, 47, '2024-12-20 08:26:22', '2024-12-20 08:26:22'),
(236, '1734708382-canh-dong-muoi-bac-lieu-dia-diem-check-in-hot-ran-ran-cua-gioi-tre-3080-16.jpg', 'Cánh đồng muối', NULL, 0, 47, '2024-12-20 08:26:22', '2024-12-20 08:26:22'),
(237, '1734708455-du-lich-Ca-Mau-8652-1649240145-9188-1651827806.jpg', 'Mũi Cà Mau', NULL, 2, 48, '2024-12-20 08:27:35', '2024-12-20 08:27:35'),
(238, '1734708455-cot-co-Ha-Noi-Ca-Mau-Chu-Duc-V-6071-8791-1651827809.jpg', 'Mũi Cà Mau', NULL, 0, 48, '2024-12-20 08:27:35', '2024-12-20 08:27:35'),
(239, '1734708455-Dat-Mui-Ca-Mau-Vnexpress8-1571050207.jpg', 'Mũi Cà Mau', NULL, 0, 48, '2024-12-20 08:27:35', '2024-12-20 08:27:35'),
(240, '1734708455-go-and-share-du-lich-mui-ca-mau-23-1024x767.webp', 'Mũi Cà Mau', NULL, 0, 48, '2024-12-20 08:27:35', '2024-12-20 08:27:35'),
(241, '1734708455-go-and-share-du-lich-mui-ca-mau-27-1024x576.webp', 'Mũi Cà Mau', NULL, 0, 48, '2024-12-20 08:27:35', '2024-12-20 08:27:35'),
(242, '1734708516-honkhoai.jpg', 'Đảo Hòn Khoai', NULL, 2, 49, '2024-12-20 08:28:36', '2024-12-20 08:28:36'),
(243, '1734708516-Damthituong.jpg', 'Đảo Hòn Khoai', NULL, 0, 49, '2024-12-20 08:28:36', '2024-12-20 08:28:36'),
(244, '1734708516-honkhoai1.jpg', 'Đảo Hòn Khoai', NULL, 0, 49, '2024-12-20 08:28:36', '2024-12-20 08:28:36'),
(245, '1734708516-honkhoai2.jpg', 'Đảo Hòn Khoai', NULL, 0, 49, '2024-12-20 08:28:36', '2024-12-20 08:28:36'),
(246, '1734708516-honkhoai5.jpg', 'Đảo Hòn Khoai', NULL, 0, 49, '2024-12-20 08:28:36', '2024-12-20 08:28:36'),
(247, '1734708588-chiem-nguong-vuon-quoc-gia-u-minh-ha-ve-dep-thien-nhien-tru-phu-02-1663693951.jpg', 'Vườn quốc gia U Minh Hạ', NULL, 2, 50, '2024-12-20 08:29:48', '2024-12-20 08:29:48'),
(248, '1734708588-chiem-nguong-vuon-quoc-gia-u-minh-ha-ve-dep-thien-nhien-tru-phu-01-1663693948.jpg', 'Vườn quốc gia U Minh Hạ', NULL, 0, 50, '2024-12-20 08:29:48', '2024-12-20 08:29:48'),
(249, '1734708588-chiem-nguong-vuon-quoc-gia-u-minh-ha-ve-dep-thien-nhien-tru-phu-03-1663693954.jpg', 'Vườn quốc gia U Minh Hạ', NULL, 0, 50, '2024-12-20 08:29:48', '2024-12-20 08:29:48'),
(250, '1734708588-chiem-nguong-vuon-quoc-gia-u-minh-ha-ve-dep-thien-nhien-tru-phu-04-1663693956.jpg', 'Vườn quốc gia U Minh Hạ', NULL, 0, 50, '2024-12-20 08:29:48', '2024-12-20 08:29:48'),
(251, '1734708588-chiem-nguong-vuon-quoc-gia-u-minh-ha-ve-dep-thien-nhien-tru-phu-05-1663693959.jpg', 'Vườn quốc gia U Minh Hạ', NULL, 0, 50, '2024-12-20 08:29:48', '2024-12-20 08:29:48'),
(252, '1734708660-094328-images2844344-22mui-ca-mau.jpg', 'Đầm Thị Tường', NULL, 2, 51, '2024-12-20 08:31:00', '2024-12-20 08:31:00'),
(253, '1734708660-9ee6dc1f-8440-4000-a00e-c735384f9651-dtt3-buc-tranh-phong-canh-o-dttjpg.jpg', 'Đầm Thị Tường', NULL, 0, 51, '2024-12-20 08:31:00', '2024-12-20 08:31:00'),
(254, '1734708660-damthituong.jpg', 'Đầm Thị Tường', NULL, 0, 51, '2024-12-20 08:31:00', '2024-12-20 08:31:00'),
(255, '1734708660-dam-thi-tuong.jpg', 'Đầm Thị Tường', NULL, 0, 51, '2024-12-20 08:31:00', '2024-12-20 08:31:00'),
(256, '1734708660-dam-thi-tuong1.jpg', 'Đầm Thị Tường', NULL, 0, 51, '2024-12-20 08:31:00', '2024-12-20 08:31:00'),
(257, '1734708722-chua-phat-hoc-can-tho-2_1632218069.jpg', 'Chùa Phật học', NULL, 2, 52, '2024-12-20 08:32:02', '2024-12-20 08:32:02'),
(258, '1734708722-chua-phat-hoc-can-tho-1_1632218039.jpg', 'Chùa Phật học', NULL, 0, 52, '2024-12-20 08:32:02', '2024-12-20 08:32:02'),
(259, '1734708722-chua-phat-hoc-can-tho-3_1632218098.jpg', 'Chùa Phật học', NULL, 0, 52, '2024-12-20 08:32:02', '2024-12-20 08:32:02'),
(260, '1734708722-chua-phat-hoc-can-tho-4_1632218119.jpg', 'Chùa Phật học', NULL, 0, 52, '2024-12-20 08:32:02', '2024-12-20 08:32:02'),
(261, '1734708722-chua-phat-hoc-can-tho-6_1632218165.jpg', 'Chùa Phật học', NULL, 0, 52, '2024-12-20 08:32:02', '2024-12-20 08:32:02'),
(262, '1734708793-cho-noi-cai-rang-2_1624262882.jpg', 'Chợ nổi Cái Răng', NULL, 2, 53, '2024-12-20 08:33:13', '2024-12-20 08:33:13'),
(263, '1734708793-cho-noi-cai-rang-4_1624262931.webp', 'Chợ nổi Cái Răng', NULL, 0, 53, '2024-12-20 08:33:13', '2024-12-20 08:33:13'),
(264, '1734708793-kham-pha-net-dac-sac-cua-cho-noi-cai-rang-chon-mien-tay-song-nuoc-01-1649149953.jpeg', 'Chợ nổi Cái Răng', NULL, 0, 53, '2024-12-20 08:33:13', '2024-12-20 08:33:13'),
(265, '1734708793-kham-pha-net-dac-sac-cua-cho-noi-cai-rang-chon-mien-tay-song-nuoc-04-1649149954.jpeg', 'Chợ nổi Cái Răng', NULL, 0, 53, '2024-12-20 08:33:13', '2024-12-20 08:33:13'),
(266, '1734708793-kham-pha-net-dac-sac-cua-cho-noi-cai-rang-chon-mien-tay-song-nuoc-12-1649149954.jpeg', 'Chợ nổi Cái Răng', NULL, 0, 53, '2024-12-20 08:33:13', '2024-12-20 08:33:13'),
(267, '1734708873-nha-co-binh-thuy-5.webp', 'Nhà cổ Bình Thủy', NULL, 2, 54, '2024-12-20 08:34:33', '2024-12-20 08:34:33'),
(268, '1734708873-nha-co-binh-thuy-3.webp', 'Nhà cổ Bình Thủy', NULL, 0, 54, '2024-12-20 08:34:33', '2024-12-20 08:34:33'),
(269, '1734708873-nha-co-binh-thuy-6.webp', 'Nhà cổ Bình Thủy', NULL, 0, 54, '2024-12-20 08:34:33', '2024-12-20 08:34:33'),
(270, '1734708873-nha-co-binh-thuy-7.webp', 'Nhà cổ Bình Thủy', NULL, 0, 54, '2024-12-20 08:34:33', '2024-12-20 08:34:33'),
(271, '1734708873-nha-co-binh-thuy-can-tho-7_1624113177.jpg', 'Nhà cổ Bình Thủy', NULL, 0, 54, '2024-12-20 08:34:33', '2024-12-20 08:34:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provinces`
--

CREATE TABLE `provinces` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `provinces`
--

INSERT INTO `provinces` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, '80', 'Tỉnh Long An', 0, '2024-12-11 12:05:04', '2024-12-11 12:46:04'),
(2, '82', 'Tỉnh Tiền Giang', 0, '2024-12-11 12:05:04', NULL),
(3, '83', 'Tỉnh Bến Tre', 0, '2024-12-11 12:05:04', NULL),
(4, '84', 'Tỉnh Trà Vinh', 0, '2024-12-11 12:05:04', NULL),
(5, '86', 'Tỉnh Vĩnh Long', 0, '2024-12-11 12:05:04', NULL),
(6, '87', 'Tỉnh Đồng Tháp', 0, '2024-12-11 12:05:04', NULL),
(7, '89', 'Tỉnh An Giang', 0, '2024-12-11 12:05:04', NULL),
(8, '91', 'Tỉnh Kiên Giang', 0, '2024-12-11 12:05:04', NULL),
(9, '92', 'Thành phố Cần Thơ', 0, '2024-12-11 12:05:04', NULL),
(10, '93', 'Tỉnh Hậu Giang', 0, '2024-12-11 12:05:04', NULL),
(11, '94', 'Tỉnh Sóc Trăng', 0, '2024-12-11 12:05:04', NULL),
(12, '95', 'Tỉnh Bạc Liêu', 0, '2024-12-11 12:05:04', NULL),
(13, '96', 'Tỉnh Cà Mau', 0, '2024-12-11 12:05:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `point` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `point`, `comment`, `time`, `status`, `id_user`, `id_location`, `created_at`, `updated_at`) VALUES
(6, 5.00, 'a', '2024-12-25 23:38:46', 0, 4, 2, '2024-12-25 16:38:46', '2024-12-25 16:38:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Người quản trị', NULL, NULL),
(2, 'Người dùng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '1734057820.jpg', 0, '2024-12-12 19:43:40', '2024-12-12 19:43:40'),
(4, '1734266184.jpg', 0, '2024-12-15 05:36:24', '2024-12-15 05:36:24'),
(7, '1734267518.jpg', 0, '2024-12-15 05:58:39', '2024-12-15 05:58:39'),
(9, '1734267571.jpg', 0, '2024-12-15 05:59:31', '2024-12-15 05:59:31'),
(10, '1734267656.jpg', 0, '2024-12-15 06:00:56', '2024-12-15 06:00:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typeofutilities`
--

CREATE TABLE `typeofutilities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `typeofutilities`
--

INSERT INTO `typeofutilities` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lưu trú', 0, '2024-12-12 18:23:43', '2024-12-12 18:23:43'),
(2, 'Ẩm thực', 0, '2024-12-12 18:23:48', '2024-12-12 18:23:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch sinh thái', 0, '2024-12-12 18:22:50', '2024-12-12 18:22:50'),
(2, 'Du lịch tâm linh', 0, '2024-12-12 18:22:54', '2024-12-12 18:22:54'),
(3, 'Du lịch nghỉ dưỡng', 0, '2024-12-12 18:23:04', '2024-12-12 18:23:04'),
(4, 'Du lịch văn hóa', 0, '2024-12-12 18:23:16', '2024-12-12 18:23:16'),
(5, 'Du lịch làng nghề truyền thống', 0, '2024-12-12 18:23:26', '2024-12-12 18:23:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_role` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `google_id`, `username`, `email`, `address`, `password`, `image`, `status`, `id_role`, `created_at`, `updated_at`) VALUES
(2, NULL, 'admin', 'admin@gmail.com', 'Trà Vinh', '$2y$12$NzG19XOwvU7OR.2.OnsWi.eNQPCEWISIAFCXl304uvbM.0ccdEcXa', 'default.jpg', 0, 1, '2024-12-12 18:13:50', '2024-12-12 18:13:50'),
(4, NULL, 'nhudiep', 'nhudiep@gmail.com', 'Trà Vinh', '$2y$12$X8Y0VFt5bOdFQXi/tBM17O0drSaOboELPFLWYAsd5ahDsDAC7Hrx6', '1734653521.jpg', 0, 2, '2024-12-19 17:12:02', '2024-12-19 17:12:02'),
(9, NULL, 'ngocdanthanhdt', 'ngocdanthanhdt@gmail.com', NULL, '$2y$12$CF9wWIT55o5mh7xiwhKbnejath967vdyK.0.NHNOfZ5mh2v6UVMP.', 'default.jpg', 0, 2, '2024-12-25 15:50:29', '2024-12-25 15:50:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `utilities`
--

CREATE TABLE `utilities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int UNSIGNED NOT NULL,
  `distance` double(8,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_typeofutility` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `price`, `address`, `phonenumber`, `time`, `rank`, `distance`, `description`, `image`, `status`, `id_typeofutility`, `id_location`, `created_at`, `updated_at`) VALUES
(2, 'Bún nước lèo Cô Ba', 'Dao động từ 30.000 đến 100.000 VNĐ', 'Đường 19/5, Phường 1, thành phố Trà Vinh, tỉnh Trà Vinh', '0898333398', 'Từ 6:30 đến 9:30', 4, 5.10, '<p>Bún nước lèo là món ăn đặc sản nổi tiếng của tỉnh Trà Vinh, đến nỗi giới “sành điệu” thường bảo nhau: “Chưa ăn bún nước lèo xem như chưa đến Trà Vinh!”. Bún nước lèo còn thể hiện sự giao lưu văn hóa, đoàn kết giữa các cộng đồng dân tộc ở Trà Vinh. Bún nước lèo được chế biến từ mắm Pròhốc của người Khmer, có thêm món thịt heo quay của người Hoa.</p><p>Nguyên liệu chính để nấu món này là mắm bò hóc. Đây là loại mắm được làm từ nguyên liệu cá hỗn hợp. Mắm phải đạt các tiêu chuẩn, có hương vị và tan nhanh trong nước sôi. Để nước ngọt, người ta dùng thêm các loại cá như: cá lóc, cá kèo, cá ngát hay tôm, tép… Ăn bún nước lèo cần có rau ghém, gồm: bắp chuối, rau muống bào nhỏ, bông súng xắt theo chiều ngang, trộn đều với một ít rau thơm xắt nhuyễn. Vào mùa điều (còn gọi là đào lộn hột), có người còn thích băm một vài trái điều cho vào rau ghém để có vị ngon hơn. Bún nước lèo là món ăn bình dân mà lại mang đậm hương vị, nếu có dịp về Trà Vinh, mời bạn dừng chân tại một quán ăn nào đó bên đường và gọi một tô bún nước lèo để thưởng thức, chắc chắn bạn sẽ cảm thấy khác hẳn những loại bún thường ăn. Đó cũng chính là ấn tượng khó phai khi bạn tới thăm vùng đất này.</p>', '1734529601.jpg', 0, 2, 2, '2024-12-18 06:46:41', '2024-12-18 07:25:38'),
(3, 'Rich Hotel', 'Trung bình mỗi đêm khoảng 247.755 VNĐ', '86D Hùng Vương, An Cư, Ninh Kiều, Cần Thơ', '0365550024', '24/7', 3, 2.30, '<p>Nằm ở vị trí trung tâm tại Trung tâm thành phố Cần Thơ của Cần Thơ, chỗ nghỉ này đặt quý khách ở gần các điểm thu hút và tùy chọn ăn uống thú vị. Hãy nhớ dành một chút thời gian để thăm thú Nhà cổ Bình Thủy cũng như Bãi tắm Cần Thơ gần đó. Chỗ nghỉ 3 sao này có nhà hàng giúp cho kỳ nghỉ của quý khách thêm thư thái và đáng nhớ.</p>', '1734530199.jpg', 0, 1, 6, '2024-12-18 06:56:39', '2024-12-18 07:27:39'),
(4, 'Quán cháo cá lóc Cây Sung', '50.000đ/người.', '577 QL1A, Phường 4, Tân An, Long An', '0982971717', '7h00 sáng đến 21h00 các ngày trong tuần', 3, 6.00, '<p>Cháo cá lóc Cây Sung là một trong những quán ăn cực kỳ nổi tiếng ở Tân An, Long An. Quán cháo cá lóc Cây Sung mở cửa đều đặn từ 7 giờ sáng tới 9 giờ tối mỗi ngày trung bình quán bán hơn 100 kg cá lóc tươi. Những ngày cuối tuần, lễ lạt, số cá lóc bán được hơn 150 kg/ngày và hơn thế, con số đủ cho thấy cháo cá lóc rau đắng Long An&nbsp;có sức hấp dẫn như thế nào với bao người.</p>', '1734601420.jpg', 0, 2, 11, '2024-12-19 02:43:40', '2024-12-19 02:43:40'),
(5, 'Malis Homestay', '760.000 VND – 960.000 VND/ đêm (bao gồm ăn sáng tùy loại phòng)', '200 Phạm Ngũ Lão, phường 1, TP. Trà Vinh', '0934563457', '24/7', 3, 4.70, '<p>Malis Homestay được xây dựng theo phong cách hiện đại và độc đáo. Mỗi căn phòng được thiết kế riêng biệt, tạo không gian thoải mái và bảo đảm sự riêng tư. Homestay Trà Vinh này có gam màu sáng chiếm chủ đạo, kết hợp tinh tế giữa các gam màu xanh và trắng từ sơn, trang trí, cây cỏ... tạo nên không khí tươi mới, trẻ trung và năng động.</p><p>Với khuôn viên rộng, Malis Homestay còn có bể bơi và quầy bar ngoài trời, tiện lợi cho các hoạt động giải trí. Khoảng không gian xung quanh từng phòng được sử dụng để tạo ra những khu vực thư giãn lý tưởng, giúp bạn hòa mình vào thiên nhiên.</p>', '1735197568.jpg', 0, 1, 3, '2024-12-26 07:19:29', '2024-12-26 07:19:29'),
(6, 'Malis Homestay', '760.000 VND – 960.000 VND/ đêm (bao gồm ăn sáng tùy loại phòng)', '200 Phạm Ngũ Lão, phường 1, TP. Trà Vinh', '0934563457', '24/7', 3, 6.70, '<p>Malis Homestay được xây dựng theo phong cách hiện đại và độc đáo. Mỗi căn phòng được thiết kế riêng biệt, tạo không gian thoải mái và bảo đảm sự riêng tư. Homestay Trà Vinh này có gam màu sáng chiếm chủ đạo, kết hợp tinh tế giữa các gam màu xanh và trắng từ sơn, trang trí, cây cỏ... tạo nên không khí tươi mới, trẻ trung và năng động.</p><p>Với khuôn viên rộng, Malis Homestay còn có bể bơi và quầy bar ngoài trời, tiện lợi cho các hoạt động giải trí. Khoảng không gian xung quanh từng phòng được sử dụng để tạo ra những khu vực thư giãn lý tưởng, giúp bạn hòa mình vào thiên nhiên.</p>', '1735197664.jpg', 0, 1, 2, '2024-12-26 07:21:04', '2024-12-26 07:21:04'),
(7, 'Malis Homestay', '760.000 VND – 960.000 VND/ đêm (bao gồm ăn sáng tùy loại phòng)', '200 Phạm Ngũ Lão, phường 1, TP. Trà Vinh', '0934563457', '24/7', 3, 6.60, '<p>Malis Homestay được xây dựng theo phong cách hiện đại và độc đáo. Mỗi căn phòng được thiết kế riêng biệt, tạo không gian thoải mái và bảo đảm sự riêng tư. Homestay Trà Vinh này có gam màu sáng chiếm chủ đạo, kết hợp tinh tế giữa các gam màu xanh và trắng từ sơn, trang trí, cây cỏ... tạo nên không khí tươi mới, trẻ trung và năng động.</p>', '1735197747.jpg', 0, 1, 4, '2024-12-26 07:22:27', '2024-12-26 07:22:27'),
(8, 'Homestay Duyên Hải Trà Vinh', '330.000 VND/ đêm', 'Quốc lộ 53, Khóm Phước Trị, Phường 1, TP. Trà Vinh', '0909295909', '24/7', 3, 10.00, '<p>Homestay Duyên Hải là điểm dừng chân lý tưởng được nhiều du khách đến Trà Vinh yêu thích. Tại đây, bạn sẽ có cơ hội hòa mình vào không khí bình yên thoáng đãng của làng quê, nơi tách biệt khỏi sự ồn ào bên ngoài. Homestay Trà Vinh này có thiết kế đơn giản, lấy ý tưởng từ những căn nhà gỗ mộc mạc, kết hợp với gam màu cổ điển nổi bật giữa vườn cây ăn quả. Điều này đặc biệt phù hợp nếu bạn là một người yêu thích thiên nhiên và sự yên tĩnh. Duyên Hải Homestay còn thu hút du khách bởi không gian rộng lớn, sạch sẽ và đội ngũ nhân viên thân thiện, nhiệt tình, nội thất homestay được trang bị đầy đủ và đa dạng.</p>', '1735197953.jpg', 0, 1, 1, '2024-12-26 07:25:53', '2024-12-26 07:25:53'),
(9, 'Bún Suông Hùi Yến', '40.000 VNĐ/tô', '56/2 Đường Hùng Vương, Phường 3, Trà Vinh', '0907861571', 'Sáng từ 6:00 đến 10:00, chiều từ 15:00 đến 20:30', 3, 6.10, '<p>Bún đem trụng sơ với nước nóng và cho vào&nbsp;tô&nbsp;cùng tôm, giò heo, thịt ba chỉ và suông. Tiếp đó chang nước vào tô bún và có thể kèm thêm nước mắm ớt cắt lát hoặc tương đen để chấm thịt, tôm…</p><p>Các loại rau sống ngon thường ăn kèm với bún suông là: rau muống chẻ, bắp chuối xắt, xà lách xoăn và giá đỗ, húng thơm...</p>', '1735199116.jpg', 0, 2, 3, '2024-12-26 07:45:16', '2024-12-26 07:45:16'),
(10, 'Vịt Nấu Chao Hoàng Uyên', 'Dao động từ 200.000 đến 300.000 VNĐ', 'Mậu Thân, TP. Trà Vinh, Trà Vinh', '0963884410', 'Từ 9:00 đến 22:00', 3, 6.10, '<p>Thưởng thức món vịt nấu chao tại <strong>Vịt Nấu Chao Hoàng Uyên</strong> là một trải nghiệm tuyệt vời. Món ăn dân dã miền Tây này được chế biến từ vịt xiêm nấu cùng chao, ăn kèm với rau như cải xanh, rau muống, tạo nên hương vị hấp dẫn và độc đáo. Nước dùng được làm từ nước dừa, vị ngọt từ nước dừa cùng vị tươi ngon của vịt xiêm và hương thơm từ chao, tạo nên hương vị cuốn hút.</p>', '1735199367.jpg', 0, 2, 2, '2024-12-26 07:49:27', '2024-12-26 07:49:27'),
(11, 'Nhà Hàng Đặc Sản Ẩm Thực Năm Nhựt 4', 'Dao động từ 100.000 đến 400.000 VNĐ', 'Võ Văn Kiệt, TP. Trà Vinh, Trà Vinh', '0918216350', 'Từ 8:30 đến 22:00', 3, 5.00, '<p><strong>Nhà Hàng Đặc Sản Ẩm Thực Năm Nhựt 4</strong> cam kết mang đến trải nghiệm ẩm thực tuyệt vời. Với những món ăn đặc sản sáng tạo và không gian thoáng đãng, sáng sủa, quán là điểm hẹn lý tưởng cho bạn bè. Nổi tiếng với những món ăn được chế biến từ baba như mẻ nấu chuối đậu, nướng muối ớt, rang muối,... mỗi món ăn đều thấu hiểu hương vị khách hàng. Sự khéo léo trong cách nêm gia vị làm nên điểm độc đáo cho quán.</p>', '1735199738.jpg', 0, 2, 4, '2024-12-26 07:55:38', '2024-12-26 07:55:38'),
(12, 'Ẩm Thực Sao Biển', 'Dao động từ 100.000 đến 400.000 VNĐ', 'Trường Long Hoà, Duyên Hải, Trà Vinh, Việt Nam', '0965224244', 'Từ 7:30 đến 22:00', 4, 3.60, '<p>Tại đây có phục vụ các món ăn tự chọn du khách có thể thoải mái lựa chọn các món ăn mình yêu thích. Có khu vực chỗ ngồi ngoài trời. Ngoài ra còn có phục vụ món thuần chay cho những du khách không ăn được hải sản</p>', '1735200514.jpg', 0, 2, 1, '2024-12-26 08:08:34', '2024-12-26 08:08:34'),
(13, 'Lẩu và nướng Cá Chèo Bẻo', '15.000VND – 250.000VND.', '496 quốc lộ 1A, phường 4, thành phố Tân An, Long An', '0939182711', '7h00 sáng đến 22h00 các ngày trong tuần', 3, 10.00, '<p>Nằm ở ngay trên quốc lộ, thuận tiện cho thực khách các nơi ghé ăn nên quán lẩu và nướng Cá Chèo Bẻo khá đông khách. Ưu điểm của quán là món ăn ngon, giá bình dân, mặt bằng rộng rãi. Những món ăn được khen ngợi của quán là lẩu cá chèo bẻo, ghẹ rang me, cháo hàu, lẩu nấm hải sản, tôm nướng, mực ống chiên giòn, cá nướng muối ớt... Nhược điểm của quán là khá ồn ào và phục vụ món ăn hơi lâu.</p>', '1735201227.jpg', 0, 2, 11, '2024-12-26 08:20:27', '2024-12-26 08:20:27'),
(14, 'Xiên que 7k', '7.000VND/người', '77 Trịnh Quang Nghị, Phường 4, Tân An, Long An', '0977946493', 'Sáng từ 6:00 đến 22:30', 3, 10.00, '<p>Đây là quán ăn bình dân chuyên về các món xiên que. Thực đơn của quán khá phong phú, các xiên que được ướp sẵn để du khách tự nướng. Khi du khách ăn 10 xiên que còn được tặng thêm trái cây. Xiên que ở đây có hương vị đậm đà, tươi ngon và đồng giá 7.000đ. Không gian của quán khá rộng rãi, thoáng mát, nhân viên phục vụ nhiệt tình.</p>', '1735201467.jpg', 0, 2, 8, '2024-12-26 08:24:27', '2024-12-26 08:24:27'),
(15, 'Papa’s chicken', 'Dao động từ 15.000 đến 130.000 VNĐ', '248 Hùng Vương, thành phố Tân An, Long An', '0723511222', 'Từ 9:00 đến 21:30', 3, 6.00, '<p>Papa’s chicken nằm ngay trên đường Hùng Vương nên thuận lợi cho du khách tìm đến thưởng thức. Nổi bật nhất của quán là món gà cay phô mai và gà mật ong. Quán có không gian rộng rãi, mức giá vừa phải, nhân viên thân thiện. Tuy nhiên, thời gian phục vụ các món ăn của quán hơi lâu.</p>', '1735201695.jpg', 0, 2, 10, '2024-12-26 08:28:15', '2024-12-26 08:28:15'),
(16, 'Đông Nam quán', 'Dao động từ 50.000 đến 220.000 VNĐ', '60 Trần Văn Nam, Phường 3, Tân An, Long An', '0987131358', 'Mở cửa cả ngày', 4, 9.00, '<p>Quán có không gian rộng rãi, vừa có bàn trong nhà vừa có bàn đặt ngoài trời nên khá đông khách. Thực đơn của quán khá phong phú, trong đó được đánh giá cao là món lẩu gà tiềm ớt hiểm và đậu hũ Đông Nam.</p>', '1735202030.jpg', 0, 2, 12, '2024-12-26 08:33:50', '2024-12-26 08:33:50'),
(17, 'Khu du lịch làng nổi Tân Lập', 'Dao động từ 500.000 đến 580.000 VNĐ', 'Tân Lập, Mộc Hóa, Long An', '0966968133', '24/7', 4, 1.00, '<p>Khu nghỉ mát thanh bình tọa lạc trong khuôn viên rộng 135 ha dọc theo sông Vàm Cỏ Tây, cách thị xã Kiến Tường 10 km và cách xa lộ CT01 56 km. Nơi đây chỉ phục vụ cho khách du lịch có vé vào cổng.</p>', '1735202337.png', 0, 1, 8, '2024-12-26 08:38:57', '2024-12-26 08:38:57'),
(18, 'Nhà Nghỉ Minh Tâm 28', 'Dao động từ 200.000 đến 250.000 VNĐ', '188 Nguyễn Cửu Vân, Phường 4, Tân An, Long An', '0989142828', '24/7', 4, 10.00, '<p>Tọa lạc ở Ấp Bình Quang, cách Công viên văn hóa Đầm Sen 43 km, MOTEL MINH TÂM 28 cung cấp chỗ nghỉ có khu vườn, chỗ đậu xe riêng miễn phí, sân hiên và quầy bar. Chỗ nghỉ này có các tiện nghi như dịch vụ phòng và quầy lễ tân 24 giờ, cùng với Wi-Fi miễn phí ở toàn bộ chỗ nghỉ. Đây là chỗ nghỉ không hút thuốc và nằm cách Chùa Giác Lâm 45 km. Tại khách sạn, tất cả các phòng đều được thiết kế có điều hòa, bàn làm việc, TV màn hình phẳng, phòng tắm riêng, ga trải giường, khăn tắm và ban công với view vườn.</p>', '1735204596.webp', 0, 1, 10, '2024-12-26 09:16:36', '2024-12-26 09:16:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_id_type_foreign` (`id_type`),
  ADD KEY `locations_id_province_foreign` (`id_province`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_id_location_foreign` (`id_location`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_id_user_foreign` (`id_user`),
  ADD KEY `posts_id_location_foreign` (`id_location`);

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_id_user_foreign` (`id_user`),
  ADD KEY `reviews_id_location_foreign` (`id_location`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `typeofutilities`
--
ALTER TABLE `typeofutilities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_role_foreign` (`id_role`);

--
-- Chỉ mục cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilities_id_typeofutility_foreign` (`id_typeofutility`),
  ADD KEY `utilities_id_location_foreign` (`id_location`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `typeofutilities`
--
ALTER TABLE `typeofutilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_id_province_foreign` FOREIGN KEY (`id_province`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD CONSTRAINT `utilities_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilities_id_typeofutility_foreign` FOREIGN KEY (`id_typeofutility`) REFERENCES `typeofutilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
